(**************************************************************************)
(*                                                                        *)
(*   Typerex Tools                                                        *)
(*                                                                        *)
(*   Copyright 2011-2017 OCamlPro SAS                                     *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU General Public License version 3 described in the file       *)
(*   LICENSE.                                                             *)
(*                                                                        *)
(**************************************************************************)

open BuildEngineTypes

(* Add a new directory and all its sub-directories *)
val add_directory :
  build_context ->
  string -> build_directory

val find_directory : build_context -> string -> build_directory


(* [find_file dir basename] Find a file [basename] inside directory [dir].
   raise Not_found if the file could not be found. *)
val find_file : build_directory -> string ->   build_file
val find_dir : build_directory -> string -> build_directory



(*
  val new_rule :
(* context *)  build_context ->
(* location *)  string * int * string ->
(* main target *) build_file ->
(* actions *)  build_action list ->
  build_rule
*)

val add_file :
  build_package ->
  build_directory ->
  string -> build_file

val add_temp_file :
  build_package ->
  build_directory ->
  string -> build_file

val add_virtual_file :
  build_package ->
  build_directory ->
  string -> build_file

val make_virtual_file : BuildEngineTypes.build_file -> unit

val create : string -> string -> build_context

val new_package : BuildEngineTypes.build_context ->
  string -> BuildEngineTypes.build_package
