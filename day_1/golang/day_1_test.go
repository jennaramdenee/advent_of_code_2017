package main_test

import (
  "testing"
  "reflect"
  "."
)

func TestConvertEmptyArrayToInteger(t *testing.T){
  testArr := []string{}
  expectedResult := []int{}
  actualResult := main.ConvertArrayToInteger(testArr)

  if !reflect.DeepEqual(expectedResult, actualResult) {
    t.Fatalf("Expected %v, got %v", expectedResult, actualResult)
  }
}

func TestConvertArrayToInteger(t *testing.T){
  testArr := []string{"1", "2", "3", "4"}
  expectedResult := []int{1,2,3,4}
  actualResult := main.ConvertArrayToInteger(testArr)

  if !reflect.DeepEqual(expectedResult, actualResult) {
    t.Fatalf("Expected %v, got %v", expectedResult, actualResult)
  }
}

func TestCalculateZeroTotal(t *testing.T){
  testArr := []int{}
  expectedResult := 0
  actualResult := main.CalculateTotal(testArr)

  if expectedResult != actualResult {
    t.Fatalf("Expected %v, got %v", expectedResult, actualResult)
  }
}

func TestCalculateNonZeroTotal(t *testing.T){
  testArr := []int{1,1,2,2}
  expectedResult := 3
  actualResult := main.CalculateTotal(testArr)

  if expectedResult != actualResult {
    t.Fatalf("Expected %v, got %v", expectedResult, actualResult)
  }
}

func TestCalculateOverrunningTotal(t *testing.T) {
  testArr := []int{9,1,2,1,2,1,2,9}
  expectedResult := 9
  actualResult := main.CalculateTotal(testArr)

  if expectedResult != actualResult {
    t.Fatalf("Expected %v, got %v", expectedResult, actualResult)
  }
}
