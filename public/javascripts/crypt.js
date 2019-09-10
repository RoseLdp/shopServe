/**
 * Created by Administrator on 2019/8/15.
 */
const bcrypt =require('bcrypt')
//加密
const  encrypt=password=>{
    let salt=bcrypt.genSaltSync(10)
    let hash=bcrypt.hashSync(password,salt)
    return hash
}
//解密
const  decrypt=(password,hash)=>{
    return bcrypt.compareSync(password,hash)
}
module.exports={
    encrypt:encrypt,
    decrypt:decrypt
}