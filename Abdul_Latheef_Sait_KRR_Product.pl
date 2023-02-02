% Prolog code for expert system

:- dynamic(decisions/2).

%Given the order to call function

start :-
    welcome,
    reset_answers,
    recommended_vehicle(Brand), ending,
    info(Brand),nl, !.

% If the above function is false(when there is no recommendation available for user's in the system), message for the user

start :-
    write('Sorry, We are unable to find a best suitable car for you'),nl,
    write('If you want you can try again with other prefernce.'),nl.

% Greeting and asking user's name

welcome:- 
    write('CAR RECOMEMENDATION SYSTEM'),nl,
    write(' '),nl,
    write('What is your first name?'),nl,
    read(Name),nl, 
    write('Hi, '),write(Name),nl,
    write('Choose your prefernce for your car'),nl,
    write(' '),nl.

% Reccomendation head line

ending:- 
   write('Your Future car is ').


reset_answers :-
    retract(decisions(_, _)),
    fail.
reset_answers.

% Information_about_car.

info(porschetaycan):-
    write('Porsche Taycan Turbo'),nl,
    write(' '),nl,
    write('The Porsche Taycan is a high-end vehicle available in hatchback or sedan form. The hatchback variant is available at
    a variety of price ranges ranging from £76,500 to £143,400. This vehicle has an 800 volt, 79.2-93.4 kWh lithium-ion battery.
    At 220V, the vehicle finish charges within 8 to 9 hours. The car measures 4,963-4,974 mm L x 1,966-1,967 mm W x 1,395-1,412 
    mm H and has a boot capacity of 405 to 446 litres.'),nl,
    write('The car is more committed to giving the driver the finest performance with an accelaration of 0-62 mph in 2.9-5.4 seconds possible because of these incredible features. 
    In addition to performance, it provides passengers with a comfortable ride. One of the typical options for a luxury car fantasist is this.'),nl.

info(genesisg80):-
    write('Genesis Electrified G80'),nl,
    write(' '),nl,
    write('The luxurious four-door Genesis Electrified G80 has a hatchback body type. The hatchback model is offered for a range of prices starting
     at £65,750. A 523-volt, 87.2-kWh lithium polymer battery powers this car. A 220V charge takes 8 to 9 hours to complete as well. The vehicle weighs 
     2270 kg, with dimensions of 5,005 mm L x 1,925 mm W x 1,470 mm H, and has a boot capacity of 354 litres. '),nl,
    write('It provides them with a comfy journey. This is one of the typical options for a luxury car fantasist.'),nl.


info(teslaX):-
    write('Tesla Model X'),nl,
    write(' '),nl,
    write('The Tesla Model X is an electric SUV with an acceleration of 0-62 mph in 2.6 to 3.9 seconds and a maximum speed 
    of 155.3 to 162.8 mph. This Tesla vehicle has two variants: Long Range (£101,990) and Plaid(£109,990). This vehicle has 
    a 100 kWh 407 V lithium-ion battery. The car has 2,487 Litres of cargo volume with a seating area. This Vehicle has a
    4-year/ Unlimited miles warranty.'),nl,
    write('It provides them with a comfy journey. This is one of the typical options for a car enthusiast.'),nl.

info(teslaS):-
    write('Tesla Model S'),nl,
      write(' '),nl,
    write('The Tesla Model S is an electric sedan with a horsepower of 493 to 750 kW and a maximum speed of 155.3 to 200.1 mph. 
    This Tesla vehicle has two variants: Long Range (£94990) and Plaid(£117,990). This vehicle has a 100 kWh 407 V lithium-ion 
    battery. The car is equipped with a cargo volume of 709 Litres. This Vehicle has a 4-year/ Unlimited miles warranty.'),nl,
     write('The car is more committed to giving the driver the finest performance possible because of these incredible features 
            ride. One of the typical options for a luxury car fantasist is this.'),nl.

info(tesla3):-
    write('Tesla Model 3'),nl,
    write(' '),nl,
     write('The Tesla Model 3 is an electric hatchback. This Tesla vehicle has two variants: Base (47,5000) and Performance(£60,500). 
     This vehicle has a 100 kWh 407 V lithium-ion battery. At 220V, the vehicle finish charges within 31.75 to 43.5 hours. The car is 
     equipped with a cargo volume of 425 Litres. This Vehicle has a 4-year/ Unlimited miles warranty.The car measures 4,694 mm L x 1,849 mm 
     W x 1,443 mm H'),nl.

info(teslaY):-
    write('Tesla Model Y'),nl,
    write(' '),nl,
    write('The Tesla Model Y is an electric 7-seater hatchback with a horsepower of 255 to 393 kW. This Tesla vehicle has two variants:
     Base (£51,000) and Plaid(£67,000). This vehicle has a 75 kWh 350-360 V lithium-ion battery. The car is equipped with a cargo volume 
     of 971 Litres. This Vehicle has a 4-year/ Unlimited miles warranty. The car measures 4,751-4,775 mm L x 1,850-1,921 mm W x 1,600-1,624 mm H'),nl.

info(audiQ8etron):-
    write('Audi Q8 Etron'),nl,
    write(' '),nl,
    write('The Audi Q8 Etron is an SUV vehicle. This SUV is available in a variety of price ranges ranging from £67,085 to £89,085. This vehicle has 
     a 396 volt, 95-114 kWh lithium-ion battery. At 220V, the vehicle finish charges within 7 to 9.25 hours. The car measures 4,915 mm L x 1,935 mm W 
     x 1,633 mm H and has a boot capacity of 569  litres. With these amazing characteristics, the car is more dedicated to providing the driver with 
     the best performance possible. It offers passengers a comfortable ride in addition to performance. This is one of the common choices of a luxury 
     automobile fantasist.'),nl.

info(bmwi4):-
    write('BMW i4'),nl,
    write(' '),nl,
    write('The BMW i4 is an electric sedan with a horsepower of 250 to 400 kW and a maximum speed of 118.1 to 139.8 mph. This BMW vehicle has three variants 
    in a price range starting from £52,575: Sport(£52,575), Plaid(£54,075) and Base(£64,890). This vehicle charges the battery within 8.25 hours at 220V.
    The dimension of the car is 4,783 mm L x 1,852 mm W x 1,448 mm H.'),nl.

info(skodaX8):-
    write('Skoda ENYAQ iV 80X SportLine Plus'),nl,
    write(' '),nl,
    write('The Skoda ENYAQ iV 80X SportLine Plus is an electric SUV with a battery capacity of 77 kW has a range of up to 332  miles. This Skoda vehicle has 
    different variants in a price range starting from £51,100'),nl.

info(kiaEV6):-
    write('KIA EV6'),nl,
    write(' '),nl,
    write('The KIA EV6 is an electric SUV with a horsepower of 168 to 430 kW with an acceleration of  0-62 mph in 3.5 to 7.3 seconds. This KIA vehicle has 
    different variants in a price range starting from £44,495. This vehicle got a GT-Line for £47,495 which is an impressive variant of this make. The car 
    measures 4,680 mm L x 1,880 mm W x 1,550 mm H H and has a boot capacity of 490 litres.'),nl.

info(bmw745E):-
    write('BMW 745e M Sport Saloon'),nl,
    write(' '),nl,
     write('The BMW 745e M Sport Saloon is a luxurious plug-in hybrid sedan with an acceleration of 0-100km/h in 5.1-5.3 and a top speed of 250km/h. This BMW 
     7 Series combines sportiness and comfort with very low consumption. This vehicle charges the battery within 8.25 hours at 220V. The vehicle has fourth-generation 
     battery cells and six-cylinder combustion. £117,555 is the price of this vehicle.'),nl.
     
info(bmwX3):-
    write('BMW X Line'),nl,
    write(' '),nl,
    write('The BMW X3 xDrive20i MHT M Sport is a 5-seated 4x4 SUV with a 4 cylinder gasoline engine with a fuel economy of 36.7 MPG. This BMW X Series has an 
    acceleration of 0-62 MPH in 8.4 seconds and a top speed of 134 MPH with an 8-speed semi-auto gearbox. The boot space of the vehicle is 550 litres. £46,460 
    is the price of this vehicle.'),nl.

info(toyotaHighLander):-
    write('Toyota High Lander'),nl,
    write(' '),nl,
    write('The Toyota Highlander is a hybrid SUV with a horsepower of 181 to 182 kWh. This Toyota vehicle has two variants: Excel (£51,874) and Excel Premium(£56,594).This vehicle has 65 Litres of fuel capacity. The car measures 4,966 mm L x 1,930 mm W x 1,755 mm and has a boot capacity of 332 litres.'),nl.

info(fordFocusST):-
    write('Ford Focus ST-Line 1.0'),nl,
    write(' '),nl,
    write('The Ford Focus ST-Line 1.0 EcoBoost mHEV 125 PowerShift Wagon is a hybrid hatchback with a horsepower of 92 kW at the rate of 6000 rpm. This Toyota vehicle has a 1.0 
    Litre 3-cylinder engine and a 0.4 kWh 48V lithium-ion battery. This vehicle has an acceleration of 0-62 MPH in 10.4 seconds. £30,680 is the price of this vehicle'),nl.

info(audiQ3):-
    write('Audi Q3 S Line 45 TFSI E 245 PS S Tronic'),nl,
    write(' '),nl,
    write('The Audi Q3 S Line 45 TFSI E 245 PS S Tronic is a hybrid SUV with a horsepower of 180 kW at the rate of 5000 rpm. This Audi Q Series vehicle has a 1.4 
    Litre 4-cylinder engine and a 13 kWh 224V lithium-ion battery. This vehicle has a 150 mpg combined fuel economy. £42,720 is the price of this vehicle'),nl.

info(lexuxUx):-
    write('Lexux UX F Sport Engine'),nl,
    write(' '),nl,
    write('The Lexus UX is a hybrid SUV with an acceleration of  0-62 mph in 7.5 to 8.7 seconds. This vehicle has a straight engine and a 1.4 kWh 216 V nickel-metal 
    hydride, and 72.8 kWh 355 V lithium-ion. This vehicle has 283-367 Litres of boot space. This Lexus vehicle has different configurations in a price range starting 
    from £32,539.'),nl.

info(porchePanerma):-
    write('Porsche Panamera 4 E-Hybrid'),nl,
    write(' '),nl,
    write('The Porsche Panamera is a high-end vehicle available in hatchback or sedan form. The hatchback variant is available at a price of £72,900. This vehicle has an 
    fuel capacity of 80 to 90 Litres. The car measures 5,049-5,053 mm L x 1,937 mm W x 1,417-1,432 mm Hand has a boot capacity of 405 to 520 litres. This Vehicle has a 
    4-year/ Unlimited miles warranty. With these amazing characteristics, the car is more dedicated to providing the driver with the best performance possible. It offers 
    passengers a comfortable ride in addition to performance. This is one of the common choices of a luxury automobile fantasist.'),nl.

info(benzA):-
    write('Mercedes-AMG Premium A 35 4MATIC DCT Hatchback'),nl,
    write(' '),nl,
    write('The Mercedes-AMG Premium A 35 4MATIC DCT is a hybrid  Hatchback with a horsepower of 225 kW at the rate of 6100 rpm. This Mercedes vehicle has a 2.0 Litre 4-cylinder
     engine and a 48V lithium-ion battery. This vehicle has a 33 mpg combined fuel economy. £45,260 is the price of this vehicle.' ),nl.

info(benzC):-
    write('Mercedes-Benz C-Class Sedan'),nl,
    write(' '),nl,
    write('The Mercedes-Benz C-Class Sedan hybrid has a 1.5 litre 4-cylinder engine. This vehicle has a 31-42 combined mpg fuel economy. £43,160 is the price of this vehicle. 
    The car measures 4,686-4,791 mm L x 1,820-1,824 mm W x 1,437-1,450 mm H and has a boot capacity of 455 litres.'),nl.

info(jaguarXF):-
    write('Jaguar XF D200 AWD R-Dynamic S Saloon'),nl,
    write(' '),nl,
    write('The Jaguar XF D200 AWD R-Dynamic S Saloon is a hybrid sedan with a horsepower of 150 kW at the rate of 4250 rpm and acceleration of 0-62 mph in 7.8 seconds. 
    This jaguar vehicle has a 2.0 Litre 4-cylinder engine. £,34,830 is the price of this vehicle.'),nl.

info(bmw5):-
    write('BMW 5 Series 545E xDrive SE'),nl,
    write(' '),nl,
    write('The BMW 545e xDrive SE is a luxurious plug-in hybrid sedan with a horsepower of 290kW. This BMW 5 Series combines sportiness and comfort with very low consumption. 
    This vehicle has a 3.0 litre 6-cylinder engine along with a 12 kWh 354 V lithium-ion battery. The fuel economy of the vehicle is 170 mpg combined. £58,880 is the price of this vehicle.'),nl.

info(peugeot5008):-
    write('Peugeot 5008'),nl,
    write(' '),nl,
    write('The PEUGEOT 5008 is an 7-seater SUV with a gasoline dynamic engine and power between 131- 181 hp. This PEUGEOT vehicle has three variants in a price range starting 
    from £35,070: Active Premium(£35,070), Allure Premium(£37,650) and GT(£39,150).'),nl.

info(bmwG):-
    write('Mercedes‑Benz G‑Class Mercedes‑AMG '),nl,
    write(' '),nl,
    write('The Mercedes-Benz G-Class AMG Line Premium Plus is a LUXURY hybrid SUV with an acceleration of  0-62 mph in 4.5 to 6.4 seconds. This vehicle has a straight engine. 
    The car measures 4,817-4,939 mm L x 1,931-2,095 mm W x 1,966-2,210 mm H and has a boot capacity of 667 litres. The AMG variant of Mercedes G class cost £127,870.'),nl.

info(audiQ5):-
    write('Audi Q5 Edition 1 '),nl, 
    write(' '),nl,
    write('The Audi Q5 Edition 1 is a SUV which has a 2.0 litre 4-cylinder gasoline engine. This vehicle has a 32 combined mpg fuel economy and horsepower of 195kW at the rate 
    of 5250 rpm. £52,710 is the price of this vehicle.'),nl.

info(benzCGas):-
    write('Mercedes- C Class Sedan '),nl,
    write(' '),nl,
    write('The Mercedes-Benz C-Class is Sedan with a straight gasoline engine litre. This vehicle has an acceleration of 0-62 mph in 3.9 to 8.5 seconds. £43,160 is the price of 
    this vehicle. The car measures 4,686-4,791 mm L x 1,820-1,824 mm W x 1,437-1,450 mm H and has a boot capacity of 280 to 490 litres.'),nl.

info(bmw3):-
    write('BMW 3 Series Sedan'),nl,
    write(' '),nl,
    write('BMW 3 Series Sedan is a mid-size car with a gasoline engine. The car measures 4,713-4,794 mm L x 1,827-1,903 mm W x 1,433-1,445 mm H and has a boot capacity of 375 to 
    480 litres. The AMG variant of the Mercedes G class cost £127,870. This BMW vehicle has different configurations in a price range starting from £36,670.'),nl.

info(lexuxES):-
    write('Lexus ES'),nl, 
    write(' '),nl,
    write('The Lexus ES F SPORT is a SUV with an acceleration of 0-62 mph in 8.9 seconds. This vehicle has straight-engine gasoline and a hybrid version with 1.6 kWh 245 V nickel-metal 
    hydride battery along with a gasoline engine. The car measures 4,975 mm L x 1,865 mm W x 1,445 mm H and has a boot capacity of 454 litres. This Lexus F Sport vehicle’s price is £44,414.'),nl.
info(skodaOctavia):-
    write('Skoda Octavia'),nl,
    write(' '),nl,
    write('The Skoda Octavia is a compact affordable car with price starting from £22,795. This vehicle has a 40-69 combined mpg fuel economy with a 1.5-litre 4-cylinder engine. The car measures 
    4,689-4,702 mm L x 1,829 mm W x 1,455-1,470 mm Hand has a boot capacity of 600 to 640 litres.'),nl.

info(bmw4):-
    write('BMW 4 Series Gran Coupe 420I M Sport'),nl,
    write(' '),nl,
    write('The BMW 4 Series is a hatchback with different configurations in a price range starting from £41,470.. This vehicle measures 4,783 mm L x 1,852 mm W x 1,442 mm H and has 470 Litres of boot 
    space. This Lexus vehicle has a fuel capacity of 59 Litres'),nl.

info(audiRS):-
    write('Audi RS 3 Sportback'),nl,
    write(' '),nl,
    write('The Audi RS 3 Sportsback is a hatchback with different configurations in a price range starting from £53,620: Base Premium(£53,620), Carbon Black(£58,270) and Vorsprung(£60,870) . This vehicle
     has 325 Litres of boot space and 55 Litres of fuel tank capacity. This Audi vehicle has a horsepower of 294kW with 31 mpg combined fuel economy and a maximum speed of 155.3 to 174 mph.'),nl.

info(audiA3):-
    write('Audi A3 Sportback S Line 35 TFSI 150PS S Tronic'),nl,
    write(' '),nl,
    write('The Audi A 3 Edition 1 is a hatchback in a price of £33,820 . This vehicle measure 4,495 mm L x 1,816 mm W x 1,425 mm H and has 425 Litres of boot space. It has a 2.0-litre 4-cylinder engine 
    with 7-speed Automatic Transmission.'),nl.

info(audiQ7):-
    write('Audi Q7 Sport 50 TDI Quattro Tiptronic'),nl,
    write(' '),nl,
    write('The Audi Q7 is an SUV with different configurations in a price range starting from £58,685: Sport(£58,685), S line(£61835), Black Edition(£66,385) and Vorsprung(£83,935). This vehicle has a 26-130 
    mpg combined fuel economy. The car measures 5,063 mm L x 1,968 mm W x 1,740-1,741 mm H and has a boot capacity of 605 to 770 litres.'),nl.

info(kiaSorneto):-
    write('KIA Sorento Edition 2.2 CRDi 4WD DCT 7-Seat'),nl,
    write(' '),nl,
    write('The KIA Sorento is an SUV with different configurations in a price range starting from £47,850. This vehicle has a 38-43 mpg combined fuel economy with a straight diesel engine. The car measures 4,800 mm 
    L x 1,900 mm W x 1,695 mm H and has a boot capacity of 604 to 616 litres.'),nl.


info(bmwX1):-
    write('BMW X1 sDrive18d M Sport Premier AT'),nl,
    write(' '),nl,
    write('The BMW X1 is an 5-door SUV with different configurations in a price range starting from £32,650. This vehicle has a 42-61 mpg combined fuel economy with a straight diesel engine. The car measures 4,500 mm 
    L x 1,845 mm W x 1,642 mm H and has a boot capacity of 476 to 500 litres.'),nl.

info(jaguarXE):-
    write('Jaguar XE R-Dynamic SE'),nl,
    write(' '),nl,
    write('The Jaguar XE R-Dynamic SE is a sedan with different configurations in a price range starting from £32,065. This vehicle has a 146 to 155.3 mph maximum speed with an acceleration of 0-62 mph in 5.9 to 7.3 
     and a straight diesel engine. The car has a boot capacity of 291 litres.'),nl.

info(audiA6):-
    write('Audi A6 S Line 40 TDI Quattro 204 PS S Tronic'),nl,
    write(' '),nl,
    write('The Audi A6 is a sedan in a price of £40,000 . This vehicle measure 4,939-4,954 mm L x 1,886 mm W x 1,446-1,481 mm H and has 520 to 565 Litres of boot space. 52 to 73 litres of fuel capacity. It has  7 & 8-speed Transmission.'),nl.

info(benzE):-
    write('Mercedes-Benz E 300 D 4MATIC AMG Line Sedan'),nl,
    write(' '),nl,
    write('The Mercedes-Benz E-Class is Sedan with a straight diesel engine . This vehicle has an acceleration of 0-62 mph in 3.4 to 7.8 seconds. £54,750 is the price of this vehicle. The car measures 4,855-4,996 mm L x 1,852-1,907 mm W 
    x 1,428-1,476 mm H and has a boot capacity of 360 to 640 litres'),nl.

info(benzS):-
    write('Mercedes-Benz S 400 D AMG Line Premium Plus 4MATIC L'),nl,
    write(' '),nl,
    write('The Mercedes-Benz S-Class is a Luxury car with a straight diesel engine . This vehicle has an acceleration of 0-62 mph in 4.4 to 6.4 seconds. This model has different configurations starting from £84,360. The car measures 5,179-5,469 mm 
    L x 1,921-1,954 mm W x 1,503-1,510 mm H and has a boot capacity of 350 to 550 litres.'),nl.

info(bmw1):-
    write('BMW 1 Series 118D M Sport'),nl,
    write(' '),nl,
    write('The BMW 1 series is a 5-door hatchback with a straight diesel engine. This vehicle has an acceleration of 0-62 mph in 4.8 to 10.3 seconds. The price of the vehicle is £34,085. The car measures 4,319 mm L x 1,799 mm W x 1,434 mm H and has 
    a boot capacity of 380 litres.'),nl.

info(audiA5):-
    write('Audi A5 Sportback Black Edition 40 TDI Quattro 204 S Tron'),nl,
    write(' '),nl,
    write('The Audi A5 Sportback Black Edition 40 TDI Quattro 204 S Tron is a hatchback with a horsepower of 150 kW at the rate of 3800 rpm and an acceleration of 0-62 mph in 7 seconds. This Audi vehicle has a 2.0 Litre 4-cylinder diesel engine with a 
    fuel economy of 47mpg combined. £48,380 is the price of this vehicle.'),nl.

info(miniCooper):-
    write('Mini Cooper 5-Door Hatch'),nl,
    write(' '),nl,
    write('The Mini Cooper 5-Door Hatch is a compact affordable car with price starting from £23,335. This vehicle has a 49.6-50.4 mpg fuel economy with a 4-cylinder diesel engine.'),nl.



% Knowledge base rules

recommended_vehicle(Brand):-
    car(Brand), !.

% Electric 

car(porschetaycan):-
    fuel(electric),
    electric_going_for(luxury).

car(kiaEV6):-
    fuel(electric),
    electric_going_for(affordable).

car(porschetaycan):-
    fuel(electric),   
    electric_going_for(custom_prefernce),
    type(hatchback),
    price_electric(above_sixty),
     (drive_preference(performance);
    drive_preference(both)).    

car(genesisg80):-
    fuel(electric),
    electric_going_for(custom_prefernce),
    type(hatchback),
    price_electric(above_sixty),
     drive_preference(comfort).   

car(audiQ8etron):-
        fuel(electric),
        electric_going_for(custom_prefernce),
        type(suv),
        price_electric(above_sixty),
          (drive_preference(performance);
        drive_preference(both)).

car(teslaX):-
        fuel(electric),
        electric_going_for(custom_prefernce),
        type(suv),
        price_electric(above_sixty),
        drive_preference(comfort).

car(teslaS):-
        fuel(electric),
        electric_going_for(custom_prefernce),
        type(sedan),
        price_electric(above_sixty),
        (drive_preference(comfort); 
        drive_preference(performance);
        drive_preference(both)).

car(teslaY):-
    fuel(electric),
    electric_going_for(custom_prefernce),
    type(hatchback),
    price_electric(fifty_sixty).

car(bmwi4):-
    fuel(electric),
    electric_going_for(custom_prefernce),
    type(sedan),
    price_electric(fifty_sixty).

car(skodaX8):-
    fuel(electric),
    electric_going_for(custom_prefernce),
    type(suv),
    price_electric(fifty_sixty).

car(kiaEV6):-  
    fuel(electric),
    electric_going_for(custom_prefernce), 
    type(suv),
    price_electric(fourty_fifty). 

car(tesla3):-
   fuel(electric),
   electric_going_for(custom_prefernce),
   type(hatchback),
   price_electric(fourty_fifty).

% Hybrid

car(bmw745E):-
    fuel(hybrid),
    hybrid_going_for(luxury).

car(fordFocusST):- 
    fuel(hybrid),
    hybrid_going_for(low_run_cost). 

car(lexuxUx):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(suv),
    price_hybrid(thirty_fourty).

car(audiQ3):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(suv),
    price_hybrid(fourty_fifty).

car(toyotaHighLander):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(suv),
    price_hybrid(above_fifty).

car(jaguarXF):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(sedan),
    price_hybrid(thirty_fourty).

car(benzC):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(sedan),
    price_hybrid(fourty_fifty).

car(bmw5):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(sedan),
    price_hybrid(above_fifty).

car(fordFocusST) :-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(hatchback),
    price_hybrid(thirty_fourty). 

car(benzA) :-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(hatchback),
    price_hybrid(fourty_fifty).

car(porchePanerma):-
    fuel(hybrid),
    hybrid_going_for(custom_prefernce),
    type(hatchback),
    price_hybrid(above_fifty).

% Gasoline

car(benzG) :-
    fuel(gasoline),
    gasoline_going_for(luxury). 

car(skodaOctavia) :-
    fuel(gasoline),
    gasoline_going_for(affordable). 

car(peugeot5008) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(suv),
    price_gasoline(thirty_fourty).

car(bmwX3) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(suv),
    price_gasoline(fourty_fifty).

car(audiQ5) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(suv),
    price_gasoline(above_fifty).

car(bmw3) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(sedan),
    price_gasoline(thirty_fourty).

car(lexuxES) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(sedan),
    price_gasoline(fourty_fifty).

car(benzCGas) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(sedan),
    price_gasoline(above_fifty).

car(audiRS) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(hatchback),
    price_gasoline(above_fifty).

car(bmw4) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(hatchback),
    price_gasoline(fourty_fifty).

car(audiA3) :-
    fuel(gasoline),
    gasoline_going_for(custom_prefernce),
    type(hatchback),
    price_gasoline(thirty_fourty).

% Diesel

car(benzS) :-
    fuel(diesel),
    diesel_going_for(luxury).

car(miniCooper) :-
    fuel(diesel),
    diesel_going_for(affordable).

car(audiQ7) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(suv),
    price_diesel(above_fifty).

car(kiaSorneto) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(suv),
    price_diesel(fourty_fifty).

car(bmwX1) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(suv),
    price_diesel(thirty_fourty).

car(benzE) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(sedan),
    price_diesel(above_fifty).

car(audiA6) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(sedan),
    price_diesel(fourty_fifty).

car(jaguarXE) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(sedan),
    price_diesel(thirty_fourty).

car(audiA5) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(hatchback),
    price_diesel(fourty_fifty).

car(bmw1) :-
    fuel(diesel),
    diesel_going_for(custom_prefernce),
    type(hatchback),
    price_diesel(thirty_fourty).


% Questions to users for knowledge.

ask(fuel):-
    write('Choose the fuel type of your preference from the following'),nl.
ask(type):-
    write('Which size/type do you prefer?'),nl.
ask(electric_going_for):-
    write('Do you have a special choice ?'),nl,
    write('(Choosing any of the first 2 options will give you the recommendation directly)'),nl.
ask(price_electric):-
    write('Let us know the price range you can afford'),nl.
ask(drive_preference):-
    write('Why do choose high prince range?'),nl.
ask(hybrid_going_for):-
    write('Do you have a special choice ?'),nl,
    write('(Choosing any of the first 2 options will give you the recommendation directly)'),nl.
ask(price_hybrid):-
    write('Let us know the price range you can afford'),nl.
ask(price_gasoline):-
    write('Let us know the price range you can afford'),nl.
ask(gasoline_going_for):-
    write('Do you have a special choice ?'),nl,
    write('(Choosing any of the first 2 options will give you the recommendation directly)'),nl.
ask(price_diesel):-
    write('Let us know the price range you can afford'),nl.
ask(diesel_going_for):-
    write('Do you have a special choice ?'),nl,
    write('(Choosing any of the first 2 options will give you the recommendation directly)'),nl.


% Option typos

option(electric):-
    write('Electric'),nl.
option(hybrid):-
    write('Hybrid'),nl.
option(gasoline):-
    write('Gasoline'),nl.
option(diesel):-
    write('Diesel'),nl.
option(suv):-
    write('SUV'),nl.
option(sedan):-
    write('Sedan'),nl.
option(hatchback):-
    write('Hatchback'),nl.
option(luxury):-
    write('Luxury'),nl.
option(affordable):-
    write('Affordable'),nl.
option(custom_prefernce):-
    write('No, I want try cuztomizing'),nl.
option(thirty_fourty):-
    write('£30,000 - £40,000'),nl.
option(fourty_fifty):-
    write('£40,000 - £50,000'),nl.
option(fifty_sixty):-
    write('£50,000 - £60,000'),nl.
option(above_fifty):-
    write('£50,000 and above'),nl.
option(above_sixty):-
    write('£60,000 and above'),nl.
option(comfort):-
    write('For Comfort'),nl.
option(performance):-
    write('For Performance'),nl.
option(both):-
    write('Both Comfort & Performance'),nl.
option(low_run_cost):-
   write('Low Run Cost'),nl.


% Displys organised list of options with index number for the user

answers([], _).
answers([First|Rest], StartNumber) :-
  write(StartNumber), write('. '), option(First), nl,
  Next is StartNumber + 1,
  answers(Rest, Next).

parse(1, [First|_], First).
parse(StartNumber, [_|Rest], Response) :-
  StartNumber > 1,
  Next is StartNumber - 1,
  parse(Next, Rest, Response).

% Asks the Question to the user and saves the Answer

request(Question, Answer, Choices) :-
  ask(Question),
  answers(Choices, 1),
  read(Index),
  parse(Index, Choices, Response),
  asserta(decisions(Question, Response)),
  Response = Answer.

% Assigns an option to questions from the knowledge base

fuel(Answer) :-
    decisions(fuel, Answer).
fuel(Answer) :-
    \+ decisions(fuel, _),
    request(fuel, Answer, [electric, hybrid, gasoline, diesel]).

type(Answer) :-
    decisions(type, Answer).
type(Answer) :-
    \+ decisions(type, _),
    request(type, Answer, [suv, sedan, hatchback]).

electric_going_for(Answer) :-
    decisions(electric_going_for, Answer).
electric_going_for(Answer) :-
    \+ decisions(electric_going_for, _),
    request(electric_going_for, Answer, [luxury, affordable, custom_prefernce]).

price_electric(Answer) :-
    decisions(price_electric, Answer).
price_electric(Answer) :-
    \+ decisions(price_electric, _),
    request(price_electric, Answer, [fourty_fifty, fifty_sixty, above_sixty]).

drive_preference(Answer) :-
    decisions(drive_preference, Answer).
drive_preference(Answer) :-
    \+ decisions(drive_preference, _),
    request(drive_preference, Answer, [comfort, performance, both]).

hybrid_going_for(Answer) :-
    decisions(hybrid_going_for, Answer).
hybrid_going_for(Answer) :-
    \+ decisions(hybrid_going_for, _),
    request(hybrid_going_for, Answer, [luxury, low_run_cost, custom_prefernce]).

price_hybrid(Answer) :-
    decisions(price_hybrid, Answer).
price_hybrid(Answer) :-
    \+ decisions(price_hybrid, _),
    request(price_hybrid, Answer, [thirty_fourty, fourty_fifty, above_fifty]).

gasoline_going_for(Answer) :-
    decisions(gasoline_going_for, Answer).
gasoline_going_for(Answer) :-
    \+ decisions(gasoline_going_for, _),
    request(gasoline_going_for, Answer, [luxury, affordable, custom_prefernce]).
price_gasoline(Answer) :-
    decisions(price_gasoline, Answer).
price_gasoline(Answer) :-
    \+ decisions(price_gasoline, _),
    request(price_gasoline, Answer, [thirty_fourty, fourty_fifty, above_fifty]).

diesel_going_for(Answer) :-
    decisions(diesel_going_for, Answer).
diesel_going_for(Answer) :-
    \+ decisions(diesel_going_for, _),
    request(diesel_going_for, Answer, [luxury, affordable, custom_prefernce]).
price_diesel(Answer) :-
    decisions(price_diesel, Answer).
price_diesel(Answer) :-
    \+ decisions(price_diesel, _),
    request(price_diesel, Answer, [thirty_fourty, fourty_fifty, above_fifty]).



