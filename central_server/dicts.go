package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/2huskies/structs"
)

func getSubjects(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	query := "SELECT * FROM subject order by id"
	rows, err := db.Query(query)
	if err != nil {
		http.Error(w, fmt.Sprintf("query: %s: %s", http.StatusText(500), err), 500)
		return
	}
	defer rows.Close()

	subjects := make([]*structs.Subject, 0, 30)
	for rows.Next() {
		subj := &structs.Subject{}
		err = rows.Scan(
			&subj.ID,
			&subj.Name,
		)
		if err != nil {
			http.Error(w, fmt.Sprintf("scan: %s: %s", http.StatusText(500), err), 500)
			return
		}
		subjects = append(subjects, subj)
	}

	json.NewEncoder(w).Encode(subjects)
}

func getSpecialties(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	query := "SELECT * FROM specialty order by code"
	rows, err := db.Query(query)
	if err != nil {
		http.Error(w, fmt.Sprintf("query: %s: %s", http.StatusText(500), err), 500)
		return
	}
	defer rows.Close()

	specialties := make([]*structs.Specialty, 0, 30)
	for rows.Next() {
		spec := &structs.Specialty{}
		err = rows.Scan(
			&spec.Code,
			&spec.Name,
		)
		if err != nil {
			http.Error(w, fmt.Sprintf("scan: %s: %s", http.StatusText(500), err), 500)
			return
		}
		specialties = append(specialties, spec)
	}

	json.NewEncoder(w).Encode(specialties)
}

func getUniversities(w http.ResponseWriter, r *http.Request) {
	log.Printf("in getUniversities")
	w.Header().Set("Content-Type", "application/json")
	query := "SELECT * FROM university order by code"
	rows, err := db.Query(query)
	if err != nil {
		http.Error(w, fmt.Sprintf("query: %s: %s", http.StatusText(500), err), 500)
		return
	}
	defer rows.Close()

	arr := make([]*structs.University, 0, 30)
	for rows.Next() {
		item := &structs.University{}
		err = rows.Scan(
			&item.Code,
			&item.Name,
			&item.Active,
			&item.URL,
			&item.ShortName,
			&item.City,
			&item.Rate,
		)
		if err != nil {
			http.Error(w, fmt.Sprintf("scan: %s: %s", http.StatusText(500), err), 500)
			log.Printf("scan: %s: %s", http.StatusText(500), err)
			return
		}
		arr = append(arr, item)
	}

	log.Printf("%v", arr)
	json.NewEncoder(w).Encode(arr)
}