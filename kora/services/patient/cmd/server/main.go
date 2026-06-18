package main

import (
	"fmt"

	pb "github.com/kora-health/kora/services/patient/gen/go/patient"
)


func main() {
	req := &pb.PatientContextRequest{
		PatientId: "12345",
	}

	fmt.Printf("Request: %v\n", req)
}