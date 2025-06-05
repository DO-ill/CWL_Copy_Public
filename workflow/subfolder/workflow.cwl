#!/usr/bin/env cwl-runner

cwlVersion: cwl:v1.0
class: CommandLineTool

label: catfile
doc: test
inputs:
  FileInput:
    type: File[]
    inputBinding:
      position: 1
      prefix: ""
  outputfile:
    type: string
    default: file_DO.txt
    inputBinding:
      position: 3
outputs:
  output:
    type: File
    outputBinding:
      glob:
      - $(inputs.outputfile)
      loadContents: false
arguments:
  - position: 2
    valueFrom: '>'

baseCommand: 
  - cat
