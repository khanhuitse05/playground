
# Junior Written Questions


1. Convert fullName() to a getter called milkshake using the shorthand “fat arrow” syntax.
```
class User {
  int firstName;
  int lastName;

  Recipe(this.firstName, this.lastName);
  
  int fullName() {
    return firstName + lastName;
  }
}
```
2. What bug? How would you fix this?

```
class MyWidget extends StatelessWidget {
  final personNextToMe = 'That reminds me about the time when I was ten and our neighbor, her name was Mrs. Mable, and she said...';

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.airline_seat_legroom_reduced),
      Text(personNextToMe),
      Icon(Icons.airline_seat_legroom_reduced),
    ]);
  }
}
```

3. What bug? How would you fix this?

```
class MyWidget extends StatelessWidget {
 final firstText = 'That reminds me about the time when I was ten and our neighbor, her name was ';
 final nameText = 'Mrs. Mable'
 final moreText = ', and she said...'

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(firstText, style: bodyStyle),
      Text(nameText, style: highlightStyle),
      Text(moreText, style: bodyStyle),
    ]);
  }
}
```

4. How would you make cheese private? How would you make it a global variable? When should you use globals?

```
class Pizza {
  String cheese = 'cheddar';
}
```

# Senior Questions

1. What types of tests can you perform?

- There are three main kinds of tests: unit tests, widget tests and integration tests. 
- Unit tests are all about checking the validity of your business logic. 
- Widget tests are for making sure UI widgets have the components that you expect them to. 
- Integration tests check that your app is working as a whole.


