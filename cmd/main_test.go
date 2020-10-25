package main;


import (
	"fmt"
	"testing"
)


func TestLambdaHandler(t *testing.T) {
	event := LambdaEvent{Name: "Talha", Age: 20}
	message := fmt.Sprintf("%s is %d years old.", event.Name, event.Age)
	response, err := LambdaHandler(event)
	if err != nil {
		t.Error("Error in lambda handler.")
	}
	if response.Message != message {
		t.Error("Lambda respopnse is not correct.")
	}
}
