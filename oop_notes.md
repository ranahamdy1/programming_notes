ليه اخترعوا ال oop
- باختصار لو عاوزين نجمع رقمين مثلا فدا عادى هنعَرَف المتغير الاول والتانى ونجمعهم فدا مثال بسيط ،
- طب لو عاوزين نعمل برنامج لاداره الكليه كده عاوزين نعَرَف كل الطلاب ال ف الكليه والدكاترة والمعيدين والعاملين وكل شخص ف الكليه عاوزين نعَرَف اسمه وعمره وهكذا فدا هيبقى صعب اوى ،
فقالو هنعمل صندوق فيه الاسم والعمر بصفه عامه وكل ما احتاج اعمل شخص اخد منه نسخه وبكده يكون قللنا الكود، 
ودا كده من أسباب وجود ال oop.

 مبادئ ال oop:
  
 ## 1️⃣ Encapsulation
✨Hide data.

تعالي نكمل ع ال قولناه فوق دلوقتى عملنا صندوق اسمه person مثلا وفيه تلات صفات name, age , email 
عاوزين بقى ناخد طالب ونسميه Ali وعمره 22 و email=ali@gmail.com

فهنيجى ف ال main ونعمل 
Person Ali = Person();
ونيجى نخلي ل ali صفاته كده مثلا
Ali.name = "ali"
Ali.age = 22
Ali.email = 22
لحظت حاجه ؟
ان الايميل بتاع ali غلط والمفروض ali@gmail.com مثلا، فدى مشكله لان محدش قال انه لازم الايميل يكون بشكل معين فكده غلط 
ففى حاجه اسمها access modifiers ومنها private و public  
ودول لو عملنا مثلا private string email فكده مش هعرف اعمل access لل email غير ف class ال اسمه Person فقط وبكده نكون حميناه و مش اى حد هيقدر يستخدمه غير بشروط 
وبالتالي ال access modifier بتحدد طريقه الوصول للداتا بتاعتى
وبكده email و name و age لازم يبقو private  ،
طب لو عاوز احط قيم لهم احطها اذاى بقى ؟
نيجى لل setter و getter 
-Setter هحط من خلالها  القيم
-Getter هستدعى من خلالها القيم 
فاكر بقى مشكله ان ندخل الايميل غلط؟ 
حلينها عن طريق ال setter ان فيها هتكتب كود يقولك لو انت كاتب ايميل عباره عن أرقام مثلا يقولك error 
وبكده خلينا كل الصفات ال عندنا private محدش يعرف يوصل لها ذى ما يكون مقفول عليها جوه كبسولة.

## 2️⃣ Inheritance
✨Relation between two class.

لو عندنا فى الكليه عاوزين نوزع الطلاب  لوحدهم والدكاتره لوحدهم وذى ما قولنا هنعمل box يكون فيه الصفات ولما نعوز نعمل طالب هنكرر box  فكده كل ما نحتاج هنعمل function تحط فيها الكود ونستدعيها ف المكان ال انا عاوزاه طب لو عندنا كلاسين واحد للطلاب وواحد للدكاتره كده هيكون فيهم صفات مشتركه وكده هنكون كررنا الكود فقلنا هنعمل general class فيه الصفات المشتركه بينهم وكل واحد منهم يورث من ال general class دا وبكده نكون قللنا تكرار الكود وعملنا وراثه بينهم.

## 3️⃣ Abstraction
✨Hiding implementation and show only functionality.

تخيل عندنا كلاسين واحد للمربع والتانى للمستطيل 
فهما الاتنين لهم طول وعرض وحساب مساحتهم
فلو جينا حطينا فى class المشترك بينهم هنلاقى ان الطول والعرض وحساب المساحه مشتركين،
 بس فى حاجه داله حساب المساحه بتختلف للمربع عن المستطيل فكده مش هينفع نحط حساب المساحه ف المشترك بينهم 
فقلنا خلاص هنحط الطول والعرض ونحط الداله بتاعه حساب المساحه فاضيه بحيث لما تستدعيها ف المربع او المستطيل نغيرها فإذاى بقى هنحط داله فاضيه هنحط قبلها كلمه abstract 
ولما تيجى تعمل inheritance للداله دى لازم تعمل لها override ال هو تكتب كود الداله مختلف براحتك حسب كل كلاس من المربع او المستطيل 
وبردو الكلاس الكبير لازم هو كمان يبقى abstract علشان هنغير محتواه هو كمان.

## 4️⃣ Polymorphism
✨Display in more than one form.

تعدد الاشكال
دا ذى ال abstraction بس بيخلينى اغير فى شكل ال reference بتاعى ذى ما انا عاوز 
وله نوعين

1- override(run time) تعدد الكتابه

ودا بغير فى ال implementation للميثود .

2- overloading(compile time) تعدد القرايه

ودا بغير فى ال parameter .

دي مش موجوده في دارت

- [OOP My PDF(Notes)](https://www.canva.com/design/DAF9mAsMDyk/HclHwvlCNACJ0yIBgloDMA/edit?utm_content=DAF9mAsMDyk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
- [READ](https://www.scaler.com/topics/flutter-tutorial/oops-in-dart/)

