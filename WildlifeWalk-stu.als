abstract sig Couple {
	husband	: MaleName,
	wife	: FemaleName,
	surname	: SurName,
	animal	: Animal,
	bird	: Bird
}
enum SurName { Connor, Carver, Jones, Porter, White }
enum MaleName{ Paul, Peter, Jim, Tom, Mike }
enum FemaleName { Joanna, Marjorie, Olivia, Patricia, Sandra }
enum Animal { Beaver, Rabbit, Coyote, Woodchuck, Fox }
enum Bird { Eagle, Goose, Pheasant, Swan, WildTurkey }

fact One_to_One_Mappings {
	// Ensure that the relations under Couple are 1-1
}

fact F1 {

}

fact F2 {

}

fact F3 {

}

fact F4 {

}

fact F5 {

}

fact F6 {

}

run { } for 5
