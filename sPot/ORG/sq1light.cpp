/*
 * sq1light.cpp
 * Copyright (C) 2020 red <red@red-Swift-SF113-31>
 *
 * Distributed under terms of the MIT license.
 */
# include "sq1light.h"

#include <stdlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

static int callback(void *NotUsed, int argc, char **argv, char **azColName) {
        int i;
        for(i = 0; i<argc; i++) {
                printf("%s = %s\n", azColName[i], argv[i] ? argv[i] : "NULL");
        }
        printf("\n");
        return 0;
}

int main(int argc, char* argv[]) {
        sqlite3 *db;
        char *zErrMsg = 0;
        int rc;
        char *sql;
        const char* data = "Callback function called";

        /* Open database */
        rc = sqlite3_open("dodo10.db", &db);

        if( rc ) {
                fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
                return(0);
        } else {
                fprintf(stdout, "Opened database successfully\n");
                fprintf(file)
        }

        /*--------------- Create SQ statement ---------------------*/
        sql = "SELECT * from COMPANY";
        /* Execute SQL statement */
        rc = sqlite3_exec(db, sql, callback, (void*)data, &zErrMsg);

        if( rc != SQLITE_OK ) {
                fprintf(stderr, "SQL error: %s\n", zErrMsg);
                sqlite3_free(zErrMsg);
        } else {
                fprintf(stdout, "Operation done successfully\n");
                fprintf(h,"...\n",)
                fprintf(h,"")
        }
        sqlite3_close(db);
        return 0;
}
