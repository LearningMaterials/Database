use school;

db.createCollection("student")

db.student.insert([{_id:1,name:"小明",sex:"男",age:21,class:"软件1班"},{_id:2,name:"小花",sex:"女",age:22,class:"软件2班"}]);

db.student.find().pretty();

db.student.update({_id:1}, {$set:{age:25}});

db.student.update({name:"小明"}, {$set:{class:"软件3班"}});

db.student.remove({class:"软件2班"})；

db.student.drop();

db.dropDatabase();
