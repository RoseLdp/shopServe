/**
 * Created by Administrator on 2019/8/15.
 */
const mysql = require('mysql');
const mysqlDB = require('../javascripts/mysqlDB');

var pool = mysql.createPool(mysqlDB.mysql);

const query = function (sql, val) {
    return new Promise((resolve, reject) => {
        pool.getConnection(function (err, connection) {
            if (err) {
                reject(err)
            } else {
                connection.query(sql, val, (err, res) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve(res)
                    }
                    connection.release();
                })
            }
        })
    })
}



//注册
const register=(val)=>{
    let sql= `insert into users (userName,pass,age,iphone,address,image,money) values(?,?,?,?,?,?,?)`
    return query(sql,val)
}
//查询usershoop表
const selectFood=(val)=>{
    let sql= `select * from leisurefood`
    return query(sql)
}
//查用户名
const selectName=(val)=>{
    let sql= `select * from users where userName='${val}'`
    return query(sql)
}
//查询购买的商品（用userName查）
const stoppName=(val)=>{
    let sql= `select * from usershopp where userName='${val}'`
    return query(sql)
}
//查ID
const  selectId=(val)=>{
    let sql= `select * from users where id='${val}'`
    return query(sql)
}
//添加用户收货地址
const  addressUser=(val)=>{
    let sql= `insert into addresseditor (userName,name,tel,address) values(?,?,?,?)`
    return query(sql,val)
}
//用userName查询收货地址
const selectAddress=(val)=>{
    let sql= `select * from addresseditor where userName='${val}'`
    return query(sql)
}
//通过id修改查询收货地址
const updataAddress=(val)=>{
    let sql= `select * from addresseditor where id='${val}'`
    return query(sql)
}
//修改收货地址
const updataAddress2=(val)=>{
    let sql= `update  addresseditor set name=?,tel=?,address=? where id=?`
    return query(sql,val)
}
//删除收货地址
const delAddress=(val)=>{
    let sql= `delete from addresseditor where id='${val}'`
    return query(sql)
}
//插入支付密码
const insertPassCode=(val)=>{
    let sql= `update  users set pay=? where id=?`
    return query(sql,val)
}
//查询零食表milk前6条数据
const LeisureFood=(val)=>{
    let sql= `select * from leisurefood where type='food'  limit  0,6   `
    return query(sql,val)
}
//按id和type来查询物品
const SelectFood=(val)=>{
    let sql= `select * from leisurefood where id=? and type=?`
    return query(sql,val)
}
//根据id查询支付密码
// const Payment=(val)=>{
//     let sql= `select pay=? from users where id=? `
//     return query(sql,val)
// }
//修改库存数量
const repertory=(val)=>{
    let sql= `update  leisurefood set repertory=? where id=?`
    return query(sql,val)
}
//修改用户金额
const userMoney=(val)=>{
    let sql= `update  users set money=? where id=?`
    return query(sql,val)
}
//存储用户购买商品
const userShopp=(val)=>{
    let sql= `insert into usershopp (userName,name,number,money,image,prices,takeName,tel,address) values(?,?,?,?,?,?,?,?,?)`
    return query(sql,val)
}
//加入购物车
const insertshoppCart=(val)=>{
    let sql= `insert into shoppingcart (userName,name,mallPrice,number,image,type) values(?,?,?,?,?,?)`
    return query(sql,val)
}
//查询购物车
const slectshoppCart=(val)=>{
    let sql= `select * from  shoppingcart where userName=?`
    return query(sql,val)
}
module.exports={
    register,
    selectName,
    selectId,
    addressUser,
    selectAddress,
    updataAddress,
    updataAddress2,
    delAddress,
    insertPassCode,
    LeisureFood,
    SelectFood,
    repertory,
    userMoney,
    userShopp,
    stoppName,
    selectFood,
    insertshoppCart,
    slectshoppCart
}
