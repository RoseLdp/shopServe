var mysql=require('mysql');
const  fs=require('fs')
const router = require('koa-router')()
const bcrypt =require('bcrypt')

//引入加密模块
const  Crypt= require('../public/javascripts/crypt')

//引入mysql操作命令
const  MysqlCode= require('../public/javascripts/mysqlCode')

router.prefix('/users')

router.get('/', function (ctx, next) {
  ctx.body = 'this is a users response!'
})

//注册
router.post('/register', async (ctx, next) => {
    let obj=ctx.request.body.params
    //密码加盐加密
    obj.money=10000
    obj.pass=Crypt.encrypt(obj.pass)
    //验证用户是否存在
    await MysqlCode.selectName(obj.userName).then(async(res)=>{
        if(res.length){
            ctx.body="用户已存在"
        }else {
            //头像上传
            let base64 = ctx.request.body.params.file[0].content;
            let filename = ctx.request.body.params.fileName;
            let newFileName = Date.now() + "-" + filename + ".jpg";
            let base64Data = base64.replace(/^data:image\/\w+;base64,/, "");
            let dataBuffer = new Buffer.from(base64Data, 'base64');
            let newImage=`http://localhost:404/upload/headPortrait/${newFileName}`
            obj.image=newImage
            await  fs.writeFile(`public/upload/headPortrait/${newFileName}`, dataBuffer, function (err) {
                if (err){
                    console.log(err)
                }
                console.log("上传成功")
            });
            //用户注册
            await MysqlCode.register([obj.userName, obj.pass, obj.age, obj.iphone, obj.address, obj.image,obj.money]).then((res)=>{
                    ctx.body="注册成功"
            })
        }
    })
})
//登录
router.post('/login',async(ctx,next)=>{
    let obj=ctx.request.body.params
    await  MysqlCode.selectName(obj.userName).then(async(res)=>{
        if(res.length){
            //判断密码和数据库密码是否相同
            const checkPassword = Crypt.decrypt(obj.pass,res[0].pass)
            if (checkPassword){
                let arr=res
                await MysqlCode.slectshoppCart(res[0].userName).then((res)=> {
                    ctx.body = {
                        state: "登录成功",
                        Data: arr,
                        icon:res.length
                    }
                })
            }else{
                ctx.body={
                    state:"密码错误",
                }
            }

        }else {
            ctx.body={
                state:"账号错误",
            }
        }

    })
})
//添加用户收货地址
router.get('/AddressEditor',async(ctx,next)=>{
    let obj=ctx.request.query
    await MysqlCode.addressUser([obj.userName, obj.name, obj.tel,  obj.address]).then((res)=>{
        ctx.body="添加地址成功"
    })
})
//查询用户收货地址
router.get('/selectAddress',async(ctx,next)=>{
    let obj=ctx.request.query
    await MysqlCode.selectAddress(obj.userName).then((res)=>{
        // console.log(res)
        ctx.body=res
    })
})
//通过id修改查询收货地址
router.get('/updataAddress',async(ctx,next)=>{
    let obj=ctx.request.query
    await MysqlCode.updataAddress(obj.id).then((res)=>{

        ctx.body=res
    })
})
router.get('/updataAddress2',async(ctx,next)=>{
    let obj=ctx.request.query
    await MysqlCode.updataAddress2([obj.name,obj.tel,obj.address,obj.id]).then((res)=>{
        ctx.body="修改成功"
    })
})
router.get('/delAddress',async(ctx,next)=>{
    let obj=ctx.request.query
    await MysqlCode.delAddress(obj.id).then((res)=>{
        ctx.body="删除成功"
    })
})
//创建支付密码
router.post('/passcode',async(ctx,next)=>{
    let obj=ctx.request.body.params
    obj.pay=Crypt.encrypt(obj.pay)
    ctx.body="111"
    await MysqlCode.insertPassCode([obj.pay,obj.id]).then((res)=>{
        ctx.body="创建成功"
    })
})



module.exports = router
