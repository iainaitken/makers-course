describe('FizzBuzz', function() {
  var fizzbuzz;

  beforeEach(function() {
    fizzbuzz = new FizzBuzz();
  });

  describe('multiples of 3', function() {
    it('prints Fizz instead of 3', function() {
      expect(fizzbuzz.play(3)).toEqual('Fizz');
    });

    it('prints Fizz instead of 21', function() {
      expect(fizzbuzz.play(21)).toEqual('Fizz');
    });
  });

  describe('multiples of 5', function() {
    it('prints Buzz instead of 5', function() {
      expect(fizzbuzz.play(5)).toEqual('Buzz');
    });

    it('prints Buzz instead of 25', function() {
      expect(fizzbuzz.play(25)).toEqual('Buzz');
    });
  });

  describe('multiples of both 3 and 5', function(){
    it('prints FizzBuzz instead of 15', function(){
      expect(fizzbuzz.play(15)).toEqual('FizzBuzz');
    });

    it('prints FizzBuzz instead of 15', function(){
      expect(fizzbuzz.play(45)).toEqual('FizzBuzz');
    });
  });

  describe('all other numbers', function(){
    it('prints the number', function() {
      expect(fizzbuzz.play(1)).toEqual(1);
    });

    it('prints the number', function() {
      expect(fizzbuzz.play(61)).toEqual(61);
    });
  });
});
