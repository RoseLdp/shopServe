
var mysql=require('mysql');
const  fs=require('fs')
const router = require('koa-router')()
const bcrypt =require('bcrypt')

//引入加密模块
const  Crypt= require('../public/javascripts/crypt')

//引入mysql操作命令
const  MysqlCode= require('../public/javascripts/mysqlCode')

router.get('/', async (ctx, next) => {
    await MysqlCode.selectFood().then((res)=>{
        ctx.body=res
    })
})
//查询零食表前6条数据
router.get('/LeisureFood', async (ctx, next) => {
        await MysqlCode.LeisureFood().then((res)=>{
            ctx.body=res
        })
})
//按id和type来查询物品
router.get('/SelectFood', async (ctx, next) => {
  let obj=ctx.request.query
    await MysqlCode.SelectFood([obj.id,obj.type]).then((res)=>{
        ctx.body=res
    })
})
//支付密码验证
router.post('/Payment',async(ctx,next)=>{
    let obj=ctx.request.body.params
    //按id查询所有数据
    await  MysqlCode.selectId(obj.id).then(async(res)=>{
        if(res.length) {
            //判断密码和数据库密码是否相同
            console.log(res[0].pay)
            if (res[0].pay) {
                const checkPassword = Crypt.decrypt(obj.pay, res[0].pay)
                if (checkPassword) {
                    //修改用户金额
                    obj.money2 = res[0].money - obj.prices
                    await MysqlCode.userMoney([obj.money2, obj.id]).then(async (res) => {
                        //修改库存
                        await MysqlCode.repertory([obj.repertory, obj.fid]).then(async (res) => {
                            await MysqlCode.userShopp([obj.userName, obj.name, obj.number, obj.money, obj.image, obj.prices, obj.takeName, obj.tel, obj.address]).then(async (res) => {
                                ctx.body = {
                                    state: "ok",
                                }
                            })
                        })
                    })
                } else {
                    ctx.body = {
                        state: "支付密码错误",
                    }
                }
            }else {
                ctx.body = {
                    state: "未设置支付密码",
                }
            }

        }
    })
})
//查询用户余额
router.get('/balance', async (ctx, next) => {
    let obj=ctx.request.query
    let obj2={}
    await MysqlCode.selectId(obj.id).then(async(res)=>{
        obj2.c=res[0].money
        await MysqlCode.stoppName(obj.userName).then(async(res)=>{
            obj2.b=res.length
            console.log(obj2)
            ctx.body=obj2
        })
    })
})
//查询待发货商品
router.get('/stoppName', async (ctx, next) => {
    let obj=ctx.request.query
    await MysqlCode.stoppName(obj.userName).then(async(res)=>{
        console.log(res)
            ctx.body=res

    })
})
//加入购物车
router.get('/shoppCart', async (ctx, next) => {
    let obj=ctx.request.query
    let obj2={}
    await MysqlCode.insertshoppCart([obj.userName,obj.name,obj.mallPrice,obj.number,obj.image,obj.type]).then(async(res)=>{
            obj2.a="ok"
        await MysqlCode.slectshoppCart(obj.userName).then((res)=>{
            obj2.b=res.length
            ctx.body=obj2
        })

    })
})
//查询购物车
router.get('/slectshoppCart', async (ctx, next) => {
    let obj=ctx.request.query
        await MysqlCode.slectshoppCart(obj.userName).then((res)=>{
            ctx.body=res

    })
})








module.exports = router
