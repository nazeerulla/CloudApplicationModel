module.exports = (srv)=>{

 const {Student} = cds.entities

srv.after ('READ','Student', (each)=>{
    if (each.score < 50) 
    each.name += ' -- You are failed'
  })
}