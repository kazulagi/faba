#!/bin/sh -eu


echo "-----------------"
echo "    "
echo "    "
echo "Installing Faba (21.10)"
echo "Fortran extention package for plantFEM    "
echo "    "
echo "-----------------"

echo "Compiling ./src/uuid-fortran/uuid_module.f90     "
echo " >> uuid_module.o"
echo " | >       | (0%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/uuid-fortran/uuid_module.f90 -o  ./inc/uuid_module.o -llapack -lblas

#echo "Compiling ./src/OouraFFT/OouraFFT.f90      "
#echo " >> OouraFFT.o"
#echo " | >       | (0%)\r\c "
#mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/OouraFFT/OouraFFT.f90 -o  ./inc/OouraFFT.o -llapack -lblas
echo "Compiling ./src/BitClass/BitClass.f90      "
echo " >> BitClass.o"
echo " | >       | (0%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/BitClass/BitClass.f90 -o  ./inc/BitClass.o -llapack -lblas
echo "Compiling ./src/PhysicalConstantsClass/PhysicalConstantsClass.f90      "
echo " >> PhysicalConstantsClass.o"
echo " | >       | (0%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/PhysicalConstantsClass/PhysicalConstantsClass.f90 -o  ./inc/PhysicalConstantsClass.o -llapack -lblas

echo "Compiling ./src/StringClass/StringClass.f90      "
echo " >> StringClass.o"
echo " | >       | (5%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/StringClass/StringClass.f90 -o  ./inc/StringClass.o -llapack -lblas
echo "Compiling ./src/TimeClass/TimeClass.f90      "
echo " >> TimeClass.o"
echo " | >       | (5%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/TimeClass/TimeClass.f90 -o  ./inc/TimeClass.o -llapack -lblas
echo "Compiling ./src/TermClass/TermClass.f90      "
echo " >> TermClass.o"
echo " | >       | (5%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/TermClass/TermClass.f90 -o  ./inc/TermClass.o -llapack -lblas
echo "Compiling ./src/MathClass/MathClass.f90   "
echo " >> MathClass.o"
echo " | =>      | (5%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/MathClass/MathClass.f90 -o  ./inc/MathClass.o -llapack -lblas
echo "Compiling ./src/ConsoleClass/ConsoleClass.f90      "
echo " >> ConsoleClass.o"
echo " | >       | (5%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/ConsoleClass/ConsoleClass.f90 -o  ./inc/ConsoleClass.o -llapack -lblas
echo "Compiling ./src/PhysicsClass/PhysicsClass.f90   "
echo " >> PhysicsClass.o"
echo " | =>      | (10%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/PhysicsClass/PhysicsClass.f90 -o  ./inc/PhysicsClass.o -llapack -lblas
echo "Compiling ./src/HTTPClass/HTTPClass.f90   "
echo " >> HTTPClass.o"
echo " | =>      | (10%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/HTTPClass/HTTPClass.f90 -o  ./inc/HTTPClass.o -llapack -lblas

echo "Compiling ./src/IOClass/IOClass.f90      "
echo " >> IOClass.o"
echo " | =>      | (10%)\r\c "
mpif90 -cpp -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/IOClass/IOClass.f90 -o  ./inc/IOClass.o -llapack -lblas
echo "Compiling ./src/HTMLClass/HTMLClass.f90      "
echo " >> HTMLClass.o"
echo " | =>      | (10%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/HTMLClass/HTMLClass.f90 -o  ./inc/HTMLClass.o -llapack -lblas

echo "Compiling ./src/KinematicClass/KinematicClass.f90   "
echo " >> KinematicClass.o"
echo " | =>      | (20%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/KinematicClass/KinematicClass.f90 -o  ./inc/KinematicClass.o -llapack -lblas
echo "Compiling ./src/RandomClass/RandomClass.f90   "
echo " >> RandomClass.o"
echo " | =>      | (20%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/RandomClass/RandomClass.f90 -o  ./inc/RandomClass.o -llapack -lblas

echo "Compiling ./src/ArrayClass/ArrayClass.f90 " 
echo " >> ArrayClass.o "
echo " | =>      | (20%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/ArrayClass/ArrayClass.f90 -o  ./inc/ArrayClass.o -llapack -lblas

echo "Compiling ./src/RangeClass/RangeClass.f90 " 
echo " >> RangeClass.o "
echo " | =>      | (20%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/RangeClass/RangeClass.f90 -o  ./inc/RangeClass.o -llapack -lblas

echo "Compiling ./src/PCAClass/PCAClass.f90 " 
echo " >> PCAClass.o "
echo " | =>      | (30%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/PCAClass/PCAClass.f90 -o  ./inc/PCAClass.o -llapack -lblas



echo "Compiling ./src/SDEClass/SDEClass.f90   "
echo " >> SDEClass.o"
echo " | =>      | (30%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/SDEClass/SDEClass.f90 -o  ./inc/SDEClass.o -llapack -lblas


echo "Compiling ./src/VertexClass/VertexClass.f90 " 
echo " >> VertexClass.o "
echo " | =>      | (30%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/VertexClass/VertexClass.f90 -o  ./inc/VertexClass.o -llapack -lblas
echo "Compiling ./src/GraphClass/GraphClass.f90 " 
echo " >> GraphClass.o "
echo " | =>      | (40%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/GraphClass/GraphClass.f90 -o  ./inc/GraphClass.o -llapack -lblas
echo "Compiling ./src/VectorClass/VectorClass.f90 " 
echo " >> VectorClass.o "
echo " | =>      | (40%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/VectorClass/VectorClass.f90 -o  ./inc/Vector.o -llapack -lblas
echo "Compiling ./src/EquationClass/EquationClass.f90 " 
echo " >> EquationClass.o "
echo " | =>      | (40%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/EquationClass/EquationClass.f90 -o  ./inc/Equation.o -llapack -lblas
echo "Compiling ./src/MPIClass/MPIClass.f90       "
echo " >> MPIClass.o"
echo " | =>      | (50%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/MPIClass/MPIClass.f90 -o  ./inc/MPIClass.o -llapack -lblas
echo "Compiling ./src/DictionaryClass/DictionaryClass.f90      "
echo " >> DictionaryClass.o"
echo " | =>      | (50%)\r\c "
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/DictionaryClass/DictionaryClass.f90 -o  ./inc/DictionaryClass.o -llapack -lblas

echo "Compiling ./src/OpenMPClass/OpenMPClass.f90 "
echo " >> OpenMPClass.o"
echo " | ==>     | (60%)\r\c"
mpif90  -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/OpenMPClass/OpenMPClass.f90 -o  ./inc/OpenMPClass.o -llapack -lblas

echo "Compiling ./src/LTISystemClass/LTISystemClass.f90 "
echo " >> LTISystemClass.o"
echo " | ==>     | (60%)\r\c"
mpif90  -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/LTISystemClass/LTISystemClass.f90 -o  ./inc/LTISystemClass.o -llapack -lblas


echo "Compiling ./src/GAClass/GAClass.f90 "
echo " >> GAClass.o"
echo " | ==>     | (60%)\r\c"
mpif90  -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/GAClass/GAClass.f90 -o  ./inc/GAClass.o -llapack -lblas


echo "Compiling ./src/LinearSolverClass/LinearSolverClass.f90 " 
echo " >> LinearSolverClass.o "
echo " | ===>    | (70%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/LinearSolverClass/LinearSolverClass.f90 -o  ./inc/LinearSolverClass.o -llapack -lblas
echo "Compiling ./src/GeometryClass/GeometryClass.f90 " 
echo " >> GeometryClass.o "
echo " | ====>   | (80%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/GeometryClass/GeometryClass.f90 -o  ./inc/GeometryClass.o -llapack -lblas
echo "Compiling ./src/RouteOptimizationClass/RouteOptimizationClass.f90 " 
echo " >> RouteOptimizationClass.o "
echo " | =====>  | (80%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/RouteOptimizationClass/RouteOptimizationClass.f90 -o  ./inc/RouteOptimizationClass.o -llapack -lblas
echo "Compiling ./src/TreeClass/TreeClass.f90 "
echo " >> TreeClass.o"
echo " | =====>  | (80%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/TreeClass/TreeClass.f90 -o  ./inc/TreeClass.o -llapack -lblas
echo "Compiling ./src/CSVClass/CSVClass.f90 " 
echo " >> CSVClass.o "
echo " | =====>  | (90%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/CSVClass/CSVClass.f90 -o  ./inc/CSVClass.o -llapack -lblas
echo "Compiling ./src/ShapeFunctionClass/ShapeFunctionClass.f90 " 
echo " >> ShapeFunctionClass.o "
echo " | =====>  | (90%)\r\c"
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/ShapeFunctionClass/ShapeFunctionClass.f90 -o  ./inc/ShapeFunctionClass.o -llapack -lblas
echo "Compiling ./src/STLClass/STLClass.f90 " 
echo " >> STLClass.o "
echo " | ======> | (100%)\r\c"
echo "Standard library (STLClass) is compiled."
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/STLClass/STLClass.f90 -o  ./inc/STLClass.o -llapack -lblas
echo "Compiling ./src/WebserverClass/WebServerClass.f90 " 
echo " >> WebserverClass.o "
echo " | ======> | (100%)\r\c"
echo "Standard library (WebserverClass) is compiled."
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/WebserverClass/WebServerClass.f90 -o  ./inc/WebServerClass.o -llapack -lblas
echo "Compiling ./src/PhysicalFieldClass/PhysicalFieldClass.f90 " 
echo " >> PhysicalFieldClass.o "
echo " | ======> | (100%)\r\c"
echo "Standard library (PhysicalFieldClass) is compiled."
mpif90 -Ofast -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/PhysicalFieldClass/PhysicalFieldClass.f90 -o  ./inc/PhysicalFieldClass.o -llapack -lblas
echo "Compiling ./src/faba/faba.f90 " 
echo " >> faba.o "
echo " | ======> | (100%)\r\c"
echo "Standard library (faba) is compiled.          "
mpif90 -fopenmp -fopenacc -shared -fPIC -g -fcheck=all -fintrinsic-modules-path inc/  -c ./src/faba/faba.f90 -o  ./inc/faba.o -llapack -lblas

mv *.mod inc/
sudo chmod +x ./faba

#create symbolic link
sudo ln -si $PWD/faba /usr/local/bin/faba

echo " "
echo "Faba (21.10) is successfully installed! "
echo "Let's build your script by"
echo "faba your_script_file.f90"