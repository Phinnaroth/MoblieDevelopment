void main() {

    var scores = [33, 56, 70, 65, 42];
    var pass = scores.where((score) => score > 50).toList();
    int num = pass.length;

    print("$pass \n $num students passed"); 

}

