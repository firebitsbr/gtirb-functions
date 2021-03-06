;;; Copyright (C) 2020 GrammaTech, Inc.
;;;
;;; This code is licensed under the MIT license. See the LICENSE file in
;;; the project root for license terms.
;;;
;;; This project is sponsored by the Office of Naval Research, One Liberty
;;; Center, 875 N. Randolph Street, Arlington, VA 22203 under contract #
;;; N68335-17-C-0700.  The content of the information does not necessarily
;;; reflect the position or policy of the Government and no official
;;; endorsement should be inferred.
(defsystem "gtirb-functions"
    :name "gtirb-functions"
    :author "GrammaTech"
    :licence "MIT"
    :description "Function objects over GTIRB"
    :long-description "This repository provides simple function
objects easing working with functions on top of GTIRB instances.
Functions are not first-class in GTIRB and are not supported by the
GTIRB API.  Instead three sanctioned AuxData tables are used to
persist hold function information in GTIRB instances.  This repository
mediates access to these tables through first-class function objects."
    :depends-on (:gtirb-functions/gtirb-functions)
    :class :package-inferred-system
    :defsystem-depends-on (:asdf-package-system)
    :perform
    (test-op (o c) (symbol-call :gtirb-functions/gtirb-functions '#:test)))
