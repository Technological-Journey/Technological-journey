import mods.devtech.machines.RegisterMachine;
//RegisterMachine.CreateQuantumChest(id as int, location as string, tier as int, storage as long);
//RegisterMachine.CreateQuantumTank(id as int, location as string, tier as int, storage as int);
var id =1300;
//LUV
//Black Hole-Quantum Chest III
RegisterMachine.CreateQuantumChest(id,"Chest_IV", 6, 52768000);
//Black Hole-Quantum Tank III
id += 1;
RegisterMachine.CreateQuantumTank(id, "Tank_IV", 6, 512000000);
//ZPM
id += 1;
RegisterMachine.CreateQuantumChest(id,"Chest_V", 7, 62768000);
id += 1;
RegisterMachine.CreateQuantumTank(id, "Tank_V", 7, 768000000);
//UV
id += 1;
RegisterMachine.CreateQuantumChest(id,"Chest_VI", 8, 72768000);
id += 1;
RegisterMachine.CreateQuantumTank(id, "Tank_VI", 8, 1024000000);
//Max
id += 1;
RegisterMachine.CreateQuantumChest(id,"Chest_VII", 9, 1322144000);
//661072000
id += 1;
RegisterMachine.CreateQuantumTank(id, "Tank_VII", 9, 2147483647);

