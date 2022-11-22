/**
 * @file util.h
 * @brief Contains generic TGE utility funcitons
 */
#pragma once


/**
 * @brief Read a file into a null-terminated character array
 * @param filepath Filepath to be read into string
 * @returns Heap allocated character array, memory must be freed by caller
 */
char* tge_util_file_to_string(const char* filepath);
