const express = require('express');
const path = require('path');
const app = express();
require('dotenv').config()
const {PrismaClient} =require('@prisma/client');
const prisma = new PrismaClient();
const cors = require('cors');
var nodemailer = require('nodemailer');
app.use(express.urlencoded({ extended:true }));
app.use(express.json());
app.use(cors());

let data = [];


app.get('/',(req,res)=>{
    res.send("hi from backend");
})
app.post('/',async (req,res)=>{
    let {firstName,lastName,email,refereeEmail} =req.body;
    console.log(firstName,lastName,email,refereeEmail);
    const newUser =await prisma.referals.create({data:{
        firstName:firstName,
        lastName:lastName,
        email:email,
        refereeEmail:refereeEmail,
      }})
    var transporter = nodemailer.createTransport({
        service: 'gmail',
        secure:true,
        port:465,
        auth: {
          user: "chitranshu.arya9873@gmail.com",
          pass: process.env.PASSWORD
        }
    });
    var mailOptions = {
        from: "chitranshu.arya9873@gmail.com",
        to: refereeEmail,
        subject: 'Referral Send by ' + firstName,
        text: "your friend" +firstName + lastName+". wants you to join this amaizing course by Accredian"
    };
    transporter.sendMail(mailOptions, function(error, info){
        if (error) {
          console.log(error);
        } else {
          console.log('Email sent: ' + info.response);
        }
      });  
    
    data.push({firstName,lastName,email,refereeEmail});
    console.log(data);
})
const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
