??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.0-dev202107072v1.12.1-59825-g7cd61a340728??
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:
*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_19/lstm_cell_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*,
shared_namelstm_19/lstm_cell_19/kernel
?
/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/kernel*
_output_shapes

:(*
dtype0
?
%lstm_19/lstm_cell_19/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*6
shared_name'%lstm_19/lstm_cell_19/recurrent_kernel
?
9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_19/lstm_cell_19/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_19/lstm_cell_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_namelstm_19/lstm_cell_19/bias
?
-lstm_19/lstm_cell_19/bias/Read/ReadVariableOpReadVariableOplstm_19/lstm_cell_19/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_17/kernel/m
?
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_19/lstm_cell_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/m
?
6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/m*
_output_shapes

:(*
dtype0
?
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
?
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_19/lstm_cell_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_19/lstm_cell_19/bias/m
?
4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_17/kernel/v
?
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_19/lstm_cell_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*3
shared_name$"Adam/lstm_19/lstm_cell_19/kernel/v
?
6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_19/lstm_cell_19/kernel/v*
_output_shapes

:(*
dtype0
?
,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
?
@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
 Adam/lstm_19/lstm_cell_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Adam/lstm_19/lstm_cell_19/bias/v
?
4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_19/lstm_cell_19/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
l
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE
#
0
1
2
3
4
 
#
0
1
2
3
4
?
metrics
layer_regularization_losses
	variables
regularization_losses

layers
 non_trainable_variables
trainable_variables
!layer_metrics
 
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
 

0
1
2
 

0
1
2
?
'metrics
(layer_regularization_losses
	variables
regularization_losses

)layers
*non_trainable_variables
trainable_variables
+layer_metrics

,states
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
-metrics
.layer_regularization_losses
	variables
regularization_losses

/layers
0non_trainable_variables
trainable_variables
1layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_19/lstm_cell_19/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_19/lstm_cell_19/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_19/lstm_cell_19/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

20
 

0
1
 
 
 

0
1
2
 

0
1
2
?
3metrics
4layer_regularization_losses
#	variables
$regularization_losses

5layers
6non_trainable_variables
%trainable_variables
7layer_metrics
 
 

	0
 
 
 
 
 
 
 
 
4
	8total
	9count
:	variables
;	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
~|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_19/lstm_cell_19/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_19/lstm_cell_19/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_19/lstm_cell_19/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_19_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_19_inputlstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biasdense_17/kerneldense_17/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_424875
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_19/lstm_cell_19/kernel/Read/ReadVariableOp9lstm_19/lstm_cell_19/recurrent_kernel/Read/ReadVariableOp-lstm_19/lstm_cell_19/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/m/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp6Adam/lstm_19/lstm_cell_19/kernel/v/Read/ReadVariableOp@Adam/lstm_19/lstm_cell_19/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_19/lstm_cell_19/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_426073
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_19/lstm_cell_19/kernel%lstm_19/lstm_cell_19/recurrent_kernellstm_19/lstm_cell_19/biastotalcountAdam/dense_17/kernel/mAdam/dense_17/bias/m"Adam/lstm_19/lstm_cell_19/kernel/m,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m Adam/lstm_19/lstm_cell_19/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/v"Adam/lstm_19/lstm_cell_19/kernel/v,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v Adam/lstm_19/lstm_cell_19/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_426149??
?
?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425950

inputs
states_0
states_10
matmul_readvariableop_resource:(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????
2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????
2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?\
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425370
inputs_0=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425286*
condR
while_cond_425285*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
(__inference_lstm_19_layer_call_fn_425845
inputs_0
unknown:(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4241192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
-__inference_lstm_cell_19_layer_call_fn_425984

inputs
states_0
states_1
unknown:(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4239722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424852
lstm_19_input 
lstm_19_424839:( 
lstm_19_424841:
(
lstm_19_424843:(!
dense_17_424846:

dense_17_424848:
identity?? dense_17/StatefulPartitionedCall?lstm_19/StatefulPartitionedCall?
lstm_19/StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputlstm_19_424839lstm_19_424841lstm_19_424843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4247502!
lstm_19/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0dense_17_424846dense_17_424848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4245562"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
?s
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_425189

inputsE
3lstm_19_lstm_cell_19_matmul_readvariableop_resource:(G
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:
(B
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource:(9
'dense_17_matmul_readvariableop_resource:
6
(dense_17_biasadd_readvariableop_resource:
identity??dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?*lstm_19/lstm_cell_19/MatMul/ReadVariableOp?,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?lstm_19/whileT
lstm_19/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_19/Shape?
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice/stack?
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_19/strided_slice/stack_1?
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_19/strided_slice/stack_2?
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_19/strided_slicel
lstm_19/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros/mul/y?
lstm_19/zeros/mulMullstm_19/strided_slice:output:0lstm_19/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros/mulo
lstm_19/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_19/zeros/Less/y?
lstm_19/zeros/LessLesslstm_19/zeros/mul:z:0lstm_19/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros/Lessr
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros/packed/1?
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_19/zeros/packedo
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/zeros/Const?
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/zerosp
lstm_19/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros_1/mul/y?
lstm_19/zeros_1/mulMullstm_19/strided_slice:output:0lstm_19/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros_1/muls
lstm_19/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_19/zeros_1/Less/y?
lstm_19/zeros_1/LessLesslstm_19/zeros_1/mul:z:0lstm_19/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros_1/Lessv
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros_1/packed/1?
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_19/zeros_1/packeds
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/zeros_1/Const?
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/zeros_1?
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_19/transpose/perm?
lstm_19/transpose	Transposeinputslstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_19/transposeg
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:2
lstm_19/Shape_1?
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice_1/stack?
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_1/stack_1?
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_1/stack_2?
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_19/strided_slice_1?
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_19/TensorArrayV2/element_shape?
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_19/TensorArrayV2?
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_19/TensorArrayUnstack/TensorListFromTensor?
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice_2/stack?
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_2/stack_1?
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_2/stack_2?
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_19/strided_slice_2?
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02,
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp?
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/MatMul?
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02.
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/MatMul_1?
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/add?
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02-
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/BiasAdd?
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_19/lstm_cell_19/split/split_dim?
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_19/lstm_cell_19/split?
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/Sigmoid?
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_1?
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul?
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_2?
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0"lstm_19/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul_1?
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/add_1?
lstm_19/lstm_cell_19/Sigmoid_3Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_3?
lstm_19/lstm_cell_19/Sigmoid_4Sigmoidlstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_4?
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_3:y:0"lstm_19/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul_2?
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2'
%lstm_19/TensorArrayV2_1/element_shape?
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_19/TensorArrayV2_1^
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_19/time?
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_19/while/maximum_iterationsz
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_19/while/loop_counter?
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_19_while_body_425099*%
condR
lstm_19_while_cond_425098*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
lstm_19/while?
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2:
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02,
*lstm_19/TensorArrayV2Stack/TensorListStack?
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_19/strided_slice_3/stack?
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_19/strided_slice_3/stack_1?
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_3/stack_2?
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
lstm_19/strided_slice_3?
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_19/transpose_1/perm?
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
lstm_19/transpose_1v
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/runtime?
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_17/MatMul/ReadVariableOp?
dense_17/MatMulMatMul lstm_19/strided_slice_3:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/MatMul?
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/BiasAddt
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_423839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_423839___redundant_placeholder04
0while_while_cond_423839___redundant_placeholder14
0while_while_cond_423839___redundant_placeholder24
0while_while_cond_423839___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?

?
lstm_19_while_cond_424941,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1D
@lstm_19_while_lstm_19_while_cond_424941___redundant_placeholder0D
@lstm_19_while_lstm_19_while_cond_424941___redundant_placeholder1D
@lstm_19_while_lstm_19_while_cond_424941___redundant_placeholder2D
@lstm_19_while_lstm_19_while_cond_424941___redundant_placeholder3
lstm_19_while_identity
?
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: 2
lstm_19/while/Lessu
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_19/while/Identity"9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
'sequential_18_lstm_19_while_cond_423660H
Dsequential_18_lstm_19_while_sequential_18_lstm_19_while_loop_counterN
Jsequential_18_lstm_19_while_sequential_18_lstm_19_while_maximum_iterations+
'sequential_18_lstm_19_while_placeholder-
)sequential_18_lstm_19_while_placeholder_1-
)sequential_18_lstm_19_while_placeholder_2-
)sequential_18_lstm_19_while_placeholder_3J
Fsequential_18_lstm_19_while_less_sequential_18_lstm_19_strided_slice_1`
\sequential_18_lstm_19_while_sequential_18_lstm_19_while_cond_423660___redundant_placeholder0`
\sequential_18_lstm_19_while_sequential_18_lstm_19_while_cond_423660___redundant_placeholder1`
\sequential_18_lstm_19_while_sequential_18_lstm_19_while_cond_423660___redundant_placeholder2`
\sequential_18_lstm_19_while_sequential_18_lstm_19_while_cond_423660___redundant_placeholder3(
$sequential_18_lstm_19_while_identity
?
 sequential_18/lstm_19/while/LessLess'sequential_18_lstm_19_while_placeholderFsequential_18_lstm_19_while_less_sequential_18_lstm_19_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_18/lstm_19/while/Less?
$sequential_18/lstm_19/while/IdentityIdentity$sequential_18/lstm_19/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_18/lstm_19/while/Identity"U
$sequential_18_lstm_19_while_identity-sequential_18/lstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_19_layer_call_fn_425867

inputs
unknown:(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4247502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_423972

inputs

states
states_10
matmul_readvariableop_resource:(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????
2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????
2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?F
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_423909

inputs%
lstm_cell_19_423827:(%
lstm_cell_19_423829:
(!
lstm_cell_19_423831:(
identity??$lstm_cell_19/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_423827lstm_cell_19_423829lstm_cell_19_423831*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4238262&
$lstm_cell_19/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_423827lstm_cell_19_423829lstm_cell_19_423831*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_423840*
condR
while_cond_423839*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity}
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?[
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425823

inputs=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425739*
condR
while_cond_425738*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_19_while_cond_425098,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3.
*lstm_19_while_less_lstm_19_strided_slice_1D
@lstm_19_while_lstm_19_while_cond_425098___redundant_placeholder0D
@lstm_19_while_lstm_19_while_cond_425098___redundant_placeholder1D
@lstm_19_while_lstm_19_while_cond_425098___redundant_placeholder2D
@lstm_19_while_lstm_19_while_cond_425098___redundant_placeholder3
lstm_19_while_identity
?
lstm_19/while/LessLesslstm_19_while_placeholder*lstm_19_while_less_lstm_19_strided_slice_1*
T0*
_output_shapes
: 2
lstm_19/while/Lessu
lstm_19/while/IdentityIdentitylstm_19/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_19/while/Identity"9
lstm_19_while_identitylstm_19/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_424538

inputs=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_424454*
condR
while_cond_424453*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424836
lstm_19_input 
lstm_19_424823:( 
lstm_19_424825:
(
lstm_19_424827:(!
dense_17_424830:

dense_17_424832:
identity?? dense_17/StatefulPartitionedCall?lstm_19/StatefulPartitionedCall?
lstm_19/StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputlstm_19_424823lstm_19_424825lstm_19_424827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4245382!
lstm_19/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0dense_17_424830dense_17_424832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4245562"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
?
?
while_cond_424049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424049___redundant_placeholder04
0while_while_cond_424049___redundant_placeholder14
0while_while_cond_424049___redundant_placeholder24
0while_while_cond_424049___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_19_layer_call_fn_425856

inputs
unknown:(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4245382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_424050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_424074_0:(-
while_lstm_cell_19_424076_0:
()
while_lstm_cell_19_424078_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_424074:(+
while_lstm_cell_19_424076:
('
while_lstm_cell_19_424078:(??*while/lstm_cell_19/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_424074_0while_lstm_cell_19_424076_0while_lstm_cell_19_424078_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4239722,
*while/lstm_cell_19/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_19_424074while_lstm_cell_19_424074_0"8
while_lstm_cell_19_424076while_lstm_cell_19_424076_0"8
while_lstm_cell_19_424078while_lstm_cell_19_424078_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_425739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_425286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425918

inputs
states_0
states_10
matmul_readvariableop_resource:(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02
MatMul_1/ReadVariableOp{
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????
2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????
2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?[
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_424750

inputs=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_424666*
condR
while_cond_424665*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_424665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424665___redundant_placeholder04
0while_while_cond_424665___redundant_placeholder14
0while_while_cond_424665___redundant_placeholder24
0while_while_cond_424665___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
??
?
!__inference__wrapped_model_423751
lstm_19_inputS
Asequential_18_lstm_19_lstm_cell_19_matmul_readvariableop_resource:(U
Csequential_18_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:
(P
Bsequential_18_lstm_19_lstm_cell_19_biasadd_readvariableop_resource:(G
5sequential_18_dense_17_matmul_readvariableop_resource:
D
6sequential_18_dense_17_biasadd_readvariableop_resource:
identity??-sequential_18/dense_17/BiasAdd/ReadVariableOp?,sequential_18/dense_17/MatMul/ReadVariableOp?9sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?8sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp?:sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?sequential_18/lstm_19/whilew
sequential_18/lstm_19/ShapeShapelstm_19_input*
T0*
_output_shapes
:2
sequential_18/lstm_19/Shape?
)sequential_18/lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_18/lstm_19/strided_slice/stack?
+sequential_18/lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_18/lstm_19/strided_slice/stack_1?
+sequential_18/lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_18/lstm_19/strided_slice/stack_2?
#sequential_18/lstm_19/strided_sliceStridedSlice$sequential_18/lstm_19/Shape:output:02sequential_18/lstm_19/strided_slice/stack:output:04sequential_18/lstm_19/strided_slice/stack_1:output:04sequential_18/lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_18/lstm_19/strided_slice?
!sequential_18/lstm_19/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2#
!sequential_18/lstm_19/zeros/mul/y?
sequential_18/lstm_19/zeros/mulMul,sequential_18/lstm_19/strided_slice:output:0*sequential_18/lstm_19/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_18/lstm_19/zeros/mul?
"sequential_18/lstm_19/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_18/lstm_19/zeros/Less/y?
 sequential_18/lstm_19/zeros/LessLess#sequential_18/lstm_19/zeros/mul:z:0+sequential_18/lstm_19/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_18/lstm_19/zeros/Less?
$sequential_18/lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2&
$sequential_18/lstm_19/zeros/packed/1?
"sequential_18/lstm_19/zeros/packedPack,sequential_18/lstm_19/strided_slice:output:0-sequential_18/lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_18/lstm_19/zeros/packed?
!sequential_18/lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_18/lstm_19/zeros/Const?
sequential_18/lstm_19/zerosFill+sequential_18/lstm_19/zeros/packed:output:0*sequential_18/lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
sequential_18/lstm_19/zeros?
#sequential_18/lstm_19/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2%
#sequential_18/lstm_19/zeros_1/mul/y?
!sequential_18/lstm_19/zeros_1/mulMul,sequential_18/lstm_19/strided_slice:output:0,sequential_18/lstm_19/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_18/lstm_19/zeros_1/mul?
$sequential_18/lstm_19/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_18/lstm_19/zeros_1/Less/y?
"sequential_18/lstm_19/zeros_1/LessLess%sequential_18/lstm_19/zeros_1/mul:z:0-sequential_18/lstm_19/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_18/lstm_19/zeros_1/Less?
&sequential_18/lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2(
&sequential_18/lstm_19/zeros_1/packed/1?
$sequential_18/lstm_19/zeros_1/packedPack,sequential_18/lstm_19/strided_slice:output:0/sequential_18/lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_18/lstm_19/zeros_1/packed?
#sequential_18/lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_18/lstm_19/zeros_1/Const?
sequential_18/lstm_19/zeros_1Fill-sequential_18/lstm_19/zeros_1/packed:output:0,sequential_18/lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2
sequential_18/lstm_19/zeros_1?
$sequential_18/lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_18/lstm_19/transpose/perm?
sequential_18/lstm_19/transpose	Transposelstm_19_input-sequential_18/lstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_18/lstm_19/transpose?
sequential_18/lstm_19/Shape_1Shape#sequential_18/lstm_19/transpose:y:0*
T0*
_output_shapes
:2
sequential_18/lstm_19/Shape_1?
+sequential_18/lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_18/lstm_19/strided_slice_1/stack?
-sequential_18/lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_19/strided_slice_1/stack_1?
-sequential_18/lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_19/strided_slice_1/stack_2?
%sequential_18/lstm_19/strided_slice_1StridedSlice&sequential_18/lstm_19/Shape_1:output:04sequential_18/lstm_19/strided_slice_1/stack:output:06sequential_18/lstm_19/strided_slice_1/stack_1:output:06sequential_18/lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_18/lstm_19/strided_slice_1?
1sequential_18/lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_18/lstm_19/TensorArrayV2/element_shape?
#sequential_18/lstm_19/TensorArrayV2TensorListReserve:sequential_18/lstm_19/TensorArrayV2/element_shape:output:0.sequential_18/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_18/lstm_19/TensorArrayV2?
Ksequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_18/lstm_19/transpose:y:0Tsequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensor?
+sequential_18/lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_18/lstm_19/strided_slice_2/stack?
-sequential_18/lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_19/strided_slice_2/stack_1?
-sequential_18/lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_19/strided_slice_2/stack_2?
%sequential_18/lstm_19/strided_slice_2StridedSlice#sequential_18/lstm_19/transpose:y:04sequential_18/lstm_19/strided_slice_2/stack:output:06sequential_18/lstm_19/strided_slice_2/stack_1:output:06sequential_18/lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_18/lstm_19/strided_slice_2?
8sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpAsequential_18_lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02:
8sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp?
)sequential_18/lstm_19/lstm_cell_19/MatMulMatMul.sequential_18/lstm_19/strided_slice_2:output:0@sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2+
)sequential_18/lstm_19/lstm_cell_19/MatMul?
:sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpCsequential_18_lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02<
:sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?
+sequential_18/lstm_19/lstm_cell_19/MatMul_1MatMul$sequential_18/lstm_19/zeros:output:0Bsequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2-
+sequential_18/lstm_19/lstm_cell_19/MatMul_1?
&sequential_18/lstm_19/lstm_cell_19/addAddV23sequential_18/lstm_19/lstm_cell_19/MatMul:product:05sequential_18/lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2(
&sequential_18/lstm_19/lstm_cell_19/add?
9sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpBsequential_18_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02;
9sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?
*sequential_18/lstm_19/lstm_cell_19/BiasAddBiasAdd*sequential_18/lstm_19/lstm_cell_19/add:z:0Asequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2,
*sequential_18/lstm_19/lstm_cell_19/BiasAdd?
2sequential_18/lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_18/lstm_19/lstm_cell_19/split/split_dim?
(sequential_18/lstm_19/lstm_cell_19/splitSplit;sequential_18/lstm_19/lstm_cell_19/split/split_dim:output:03sequential_18/lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2*
(sequential_18/lstm_19/lstm_cell_19/split?
*sequential_18/lstm_19/lstm_cell_19/SigmoidSigmoid1sequential_18/lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2,
*sequential_18/lstm_19/lstm_cell_19/Sigmoid?
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_1Sigmoid1sequential_18/lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2.
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_1?
&sequential_18/lstm_19/lstm_cell_19/mulMul0sequential_18/lstm_19/lstm_cell_19/Sigmoid_1:y:0&sequential_18/lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:?????????
2(
&sequential_18/lstm_19/lstm_cell_19/mul?
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_2Sigmoid1sequential_18/lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2.
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_2?
(sequential_18/lstm_19/lstm_cell_19/mul_1Mul.sequential_18/lstm_19/lstm_cell_19/Sigmoid:y:00sequential_18/lstm_19/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2*
(sequential_18/lstm_19/lstm_cell_19/mul_1?
(sequential_18/lstm_19/lstm_cell_19/add_1AddV2*sequential_18/lstm_19/lstm_cell_19/mul:z:0,sequential_18/lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2*
(sequential_18/lstm_19/lstm_cell_19/add_1?
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_3Sigmoid1sequential_18/lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2.
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_3?
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_4Sigmoid,sequential_18/lstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2.
,sequential_18/lstm_19/lstm_cell_19/Sigmoid_4?
(sequential_18/lstm_19/lstm_cell_19/mul_2Mul0sequential_18/lstm_19/lstm_cell_19/Sigmoid_3:y:00sequential_18/lstm_19/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2*
(sequential_18/lstm_19/lstm_cell_19/mul_2?
3sequential_18/lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   25
3sequential_18/lstm_19/TensorArrayV2_1/element_shape?
%sequential_18/lstm_19/TensorArrayV2_1TensorListReserve<sequential_18/lstm_19/TensorArrayV2_1/element_shape:output:0.sequential_18/lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_18/lstm_19/TensorArrayV2_1z
sequential_18/lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_18/lstm_19/time?
.sequential_18/lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_18/lstm_19/while/maximum_iterations?
(sequential_18/lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_18/lstm_19/while/loop_counter?
sequential_18/lstm_19/whileWhile1sequential_18/lstm_19/while/loop_counter:output:07sequential_18/lstm_19/while/maximum_iterations:output:0#sequential_18/lstm_19/time:output:0.sequential_18/lstm_19/TensorArrayV2_1:handle:0$sequential_18/lstm_19/zeros:output:0&sequential_18/lstm_19/zeros_1:output:0.sequential_18/lstm_19/strided_slice_1:output:0Msequential_18/lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_18_lstm_19_lstm_cell_19_matmul_readvariableop_resourceCsequential_18_lstm_19_lstm_cell_19_matmul_1_readvariableop_resourceBsequential_18_lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_18_lstm_19_while_body_423661*3
cond+R)
'sequential_18_lstm_19_while_cond_423660*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
sequential_18/lstm_19/while?
Fsequential_18/lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2H
Fsequential_18/lstm_19/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_18/lstm_19/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_18/lstm_19/while:output:3Osequential_18/lstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02:
8sequential_18/lstm_19/TensorArrayV2Stack/TensorListStack?
+sequential_18/lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_18/lstm_19/strided_slice_3/stack?
-sequential_18/lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_18/lstm_19/strided_slice_3/stack_1?
-sequential_18/lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_18/lstm_19/strided_slice_3/stack_2?
%sequential_18/lstm_19/strided_slice_3StridedSliceAsequential_18/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:04sequential_18/lstm_19/strided_slice_3/stack:output:06sequential_18/lstm_19/strided_slice_3/stack_1:output:06sequential_18/lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2'
%sequential_18/lstm_19/strided_slice_3?
&sequential_18/lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_18/lstm_19/transpose_1/perm?
!sequential_18/lstm_19/transpose_1	TransposeAsequential_18/lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_18/lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2#
!sequential_18/lstm_19/transpose_1?
sequential_18/lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_18/lstm_19/runtime?
,sequential_18/dense_17/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_17_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02.
,sequential_18/dense_17/MatMul/ReadVariableOp?
sequential_18/dense_17/MatMulMatMul.sequential_18/lstm_19/strided_slice_3:output:04sequential_18/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_18/dense_17/MatMul?
-sequential_18/dense_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_18/dense_17/BiasAdd/ReadVariableOp?
sequential_18/dense_17/BiasAddBiasAdd'sequential_18/dense_17/MatMul:product:05sequential_18/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_18/dense_17/BiasAdd?
IdentityIdentity'sequential_18/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp.^sequential_18/dense_17/BiasAdd/ReadVariableOp-^sequential_18/dense_17/MatMul/ReadVariableOp:^sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp9^sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp;^sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^sequential_18/lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2^
-sequential_18/dense_17/BiasAdd/ReadVariableOp-sequential_18/dense_17/BiasAdd/ReadVariableOp2\
,sequential_18/dense_17/MatMul/ReadVariableOp,sequential_18/dense_17/MatMul/ReadVariableOp2v
9sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp9sequential_18/lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2t
8sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp8sequential_18/lstm_19/lstm_cell_19/MatMul/ReadVariableOp2x
:sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:sequential_18/lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2:
sequential_18/lstm_19/whilesequential_18/lstm_19/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
??
?
while_body_424454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?\
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425521
inputs_0=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425437*
condR
while_cond_425436*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424563

inputs 
lstm_19_424539:( 
lstm_19_424541:
(
lstm_19_424543:(!
dense_17_424557:

dense_17_424559:
identity?? dense_17/StatefulPartitionedCall?lstm_19/StatefulPartitionedCall?
lstm_19/StatefulPartitionedCallStatefulPartitionedCallinputslstm_19_424539lstm_19_424541lstm_19_424543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4245382!
lstm_19/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0dense_17_424557dense_17_424559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4245562"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_425738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425738___redundant_placeholder04
0while_while_cond_425738___redundant_placeholder14
0while_while_cond_425738___redundant_placeholder24
0while_while_cond_425738___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?^
?
'sequential_18_lstm_19_while_body_423661H
Dsequential_18_lstm_19_while_sequential_18_lstm_19_while_loop_counterN
Jsequential_18_lstm_19_while_sequential_18_lstm_19_while_maximum_iterations+
'sequential_18_lstm_19_while_placeholder-
)sequential_18_lstm_19_while_placeholder_1-
)sequential_18_lstm_19_while_placeholder_2-
)sequential_18_lstm_19_while_placeholder_3G
Csequential_18_lstm_19_while_sequential_18_lstm_19_strided_slice_1_0?
sequential_18_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_19_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_18_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:(]
Ksequential_18_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(X
Jsequential_18_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:((
$sequential_18_lstm_19_while_identity*
&sequential_18_lstm_19_while_identity_1*
&sequential_18_lstm_19_while_identity_2*
&sequential_18_lstm_19_while_identity_3*
&sequential_18_lstm_19_while_identity_4*
&sequential_18_lstm_19_while_identity_5E
Asequential_18_lstm_19_while_sequential_18_lstm_19_strided_slice_1?
}sequential_18_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_19_tensorarrayunstack_tensorlistfromtensorY
Gsequential_18_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:([
Isequential_18_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:
(V
Hsequential_18_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:(???sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?>sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?@sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
Msequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_18_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_19_tensorarrayunstack_tensorlistfromtensor_0'sequential_18_lstm_19_while_placeholderVsequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItem?
>sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOpIsequential_18_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02@
>sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?
/sequential_18/lstm_19/while/lstm_cell_19/MatMulMatMulFsequential_18/lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(21
/sequential_18/lstm_19/while/lstm_cell_19/MatMul?
@sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOpKsequential_18_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02B
@sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
1sequential_18/lstm_19/while/lstm_cell_19/MatMul_1MatMul)sequential_18_lstm_19_while_placeholder_2Hsequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(23
1sequential_18/lstm_19/while/lstm_cell_19/MatMul_1?
,sequential_18/lstm_19/while/lstm_cell_19/addAddV29sequential_18/lstm_19/while/lstm_cell_19/MatMul:product:0;sequential_18/lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2.
,sequential_18/lstm_19/while/lstm_cell_19/add?
?sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOpJsequential_18_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02A
?sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?
0sequential_18/lstm_19/while/lstm_cell_19/BiasAddBiasAdd0sequential_18/lstm_19/while/lstm_cell_19/add:z:0Gsequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(22
0sequential_18/lstm_19/while/lstm_cell_19/BiasAdd?
8sequential_18/lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_18/lstm_19/while/lstm_cell_19/split/split_dim?
.sequential_18/lstm_19/while/lstm_cell_19/splitSplitAsequential_18/lstm_19/while/lstm_cell_19/split/split_dim:output:09sequential_18/lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split20
.sequential_18/lstm_19/while/lstm_cell_19/split?
0sequential_18/lstm_19/while/lstm_cell_19/SigmoidSigmoid7sequential_18/lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
22
0sequential_18/lstm_19/while/lstm_cell_19/Sigmoid?
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid7sequential_18/lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
24
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_1?
,sequential_18/lstm_19/while/lstm_cell_19/mulMul6sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_1:y:0)sequential_18_lstm_19_while_placeholder_3*
T0*'
_output_shapes
:?????????
2.
,sequential_18/lstm_19/while/lstm_cell_19/mul?
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid7sequential_18/lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
24
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_2?
.sequential_18/lstm_19/while/lstm_cell_19/mul_1Mul4sequential_18/lstm_19/while/lstm_cell_19/Sigmoid:y:06sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
20
.sequential_18/lstm_19/while/lstm_cell_19/mul_1?
.sequential_18/lstm_19/while/lstm_cell_19/add_1AddV20sequential_18/lstm_19/while/lstm_cell_19/mul:z:02sequential_18/lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
20
.sequential_18/lstm_19/while/lstm_cell_19/add_1?
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_3Sigmoid7sequential_18/lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
24
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_3?
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_4Sigmoid2sequential_18/lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
24
2sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_4?
.sequential_18/lstm_19/while/lstm_cell_19/mul_2Mul6sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_3:y:06sequential_18/lstm_19/while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
20
.sequential_18/lstm_19/while/lstm_cell_19/mul_2?
@sequential_18/lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_18_lstm_19_while_placeholder_1'sequential_18_lstm_19_while_placeholder2sequential_18/lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_18/lstm_19/while/TensorArrayV2Write/TensorListSetItem?
!sequential_18/lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_18/lstm_19/while/add/y?
sequential_18/lstm_19/while/addAddV2'sequential_18_lstm_19_while_placeholder*sequential_18/lstm_19/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_18/lstm_19/while/add?
#sequential_18/lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_18/lstm_19/while/add_1/y?
!sequential_18/lstm_19/while/add_1AddV2Dsequential_18_lstm_19_while_sequential_18_lstm_19_while_loop_counter,sequential_18/lstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_18/lstm_19/while/add_1?
$sequential_18/lstm_19/while/IdentityIdentity%sequential_18/lstm_19/while/add_1:z:0!^sequential_18/lstm_19/while/NoOp*
T0*
_output_shapes
: 2&
$sequential_18/lstm_19/while/Identity?
&sequential_18/lstm_19/while/Identity_1IdentityJsequential_18_lstm_19_while_sequential_18_lstm_19_while_maximum_iterations!^sequential_18/lstm_19/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_19/while/Identity_1?
&sequential_18/lstm_19/while/Identity_2Identity#sequential_18/lstm_19/while/add:z:0!^sequential_18/lstm_19/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_19/while/Identity_2?
&sequential_18/lstm_19/while/Identity_3IdentityPsequential_18/lstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_18/lstm_19/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_18/lstm_19/while/Identity_3?
&sequential_18/lstm_19/while/Identity_4Identity2sequential_18/lstm_19/while/lstm_cell_19/mul_2:z:0!^sequential_18/lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2(
&sequential_18/lstm_19/while/Identity_4?
&sequential_18/lstm_19/while/Identity_5Identity2sequential_18/lstm_19/while/lstm_cell_19/add_1:z:0!^sequential_18/lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2(
&sequential_18/lstm_19/while/Identity_5?
 sequential_18/lstm_19/while/NoOpNoOp@^sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?^sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpA^sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2"
 sequential_18/lstm_19/while/NoOp"U
$sequential_18_lstm_19_while_identity-sequential_18/lstm_19/while/Identity:output:0"Y
&sequential_18_lstm_19_while_identity_1/sequential_18/lstm_19/while/Identity_1:output:0"Y
&sequential_18_lstm_19_while_identity_2/sequential_18/lstm_19/while/Identity_2:output:0"Y
&sequential_18_lstm_19_while_identity_3/sequential_18/lstm_19/while/Identity_3:output:0"Y
&sequential_18_lstm_19_while_identity_4/sequential_18/lstm_19/while/Identity_4:output:0"Y
&sequential_18_lstm_19_while_identity_5/sequential_18/lstm_19/while/Identity_5:output:0"?
Hsequential_18_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resourceJsequential_18_lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"?
Isequential_18_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resourceKsequential_18_lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"?
Gsequential_18_lstm_19_while_lstm_cell_19_matmul_readvariableop_resourceIsequential_18_lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"?
Asequential_18_lstm_19_while_sequential_18_lstm_19_strided_slice_1Csequential_18_lstm_19_while_sequential_18_lstm_19_strided_slice_1_0"?
}sequential_18_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_19_tensorarrayunstack_tensorlistfromtensorsequential_18_lstm_19_while_tensorarrayv2read_tensorlistgetitem_sequential_18_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?sequential_18/lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2?
>sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp>sequential_18/lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2?
@sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp@sequential_18/lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?b
?
"__inference__traced_restore_426149
file_prefix2
 assignvariableop_dense_17_kernel:
.
 assignvariableop_1_dense_17_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: @
.assignvariableop_7_lstm_19_lstm_cell_19_kernel:(J
8assignvariableop_8_lstm_19_lstm_cell_19_recurrent_kernel:
(:
,assignvariableop_9_lstm_19_lstm_cell_19_bias:(#
assignvariableop_10_total: #
assignvariableop_11_count: <
*assignvariableop_12_adam_dense_17_kernel_m:
6
(assignvariableop_13_adam_dense_17_bias_m:H
6assignvariableop_14_adam_lstm_19_lstm_cell_19_kernel_m:(R
@assignvariableop_15_adam_lstm_19_lstm_cell_19_recurrent_kernel_m:
(B
4assignvariableop_16_adam_lstm_19_lstm_cell_19_bias_m:(<
*assignvariableop_17_adam_dense_17_kernel_v:
6
(assignvariableop_18_adam_dense_17_bias_v:H
6assignvariableop_19_adam_lstm_19_lstm_cell_19_kernel_v:(R
@assignvariableop_20_adam_lstm_19_lstm_cell_19_recurrent_kernel_v:
(B
4assignvariableop_21_adam_lstm_19_lstm_cell_19_bias_v:(
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_19_lstm_cell_19_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_19_lstm_cell_19_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_19_lstm_cell_19_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_17_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_dense_17_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_lstm_19_lstm_cell_19_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_lstm_19_lstm_cell_19_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_lstm_19_lstm_cell_19_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_17_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_17_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_lstm_19_lstm_cell_19_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_lstm_19_lstm_cell_19_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_19_lstm_cell_19_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22f
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_23?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
.__inference_sequential_18_layer_call_fn_425219

inputs
unknown:(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_4247922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_19_layer_call_fn_425967

inputs
states_0
states_1
unknown:(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4238262
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?F
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_424119

inputs%
lstm_cell_19_424037:(%
lstm_cell_19_424039:
(!
lstm_cell_19_424041:(
identity??$lstm_cell_19/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_19_424037lstm_cell_19_424039lstm_cell_19_424041*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4239722&
$lstm_cell_19/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_19_424037lstm_cell_19_424039lstm_cell_19_424041*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_424050*
condR
while_cond_424049*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity}
NoOpNoOp%^lstm_cell_19/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_19/StatefulPartitionedCall$lstm_cell_19/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_18_layer_call_fn_425204

inputs
unknown:(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_4245632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_425587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425587___redundant_placeholder04
0while_while_cond_425587___redundant_placeholder14
0while_while_cond_425587___redundant_placeholder24
0while_while_cond_425587___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?	
?
.__inference_sequential_18_layer_call_fn_424820
lstm_19_input
unknown:(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_4247922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
?
?
while_cond_425285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425285___redundant_placeholder04
0while_while_cond_425285___redundant_placeholder14
0while_while_cond_425285___redundant_placeholder24
0while_while_cond_425285___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
$__inference_signature_wrapper_424875
lstm_19_input
unknown:(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_4237512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
?
?
while_cond_424453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_424453___redundant_placeholder04
0while_while_cond_424453___redundant_placeholder14
0while_while_cond_424453___redundant_placeholder24
0while_while_cond_424453___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?J
?

lstm_19_while_body_424942,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:(O
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(J
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:(
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:(M
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:
(H
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:(??1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_19/while/TensorArrayV2Read/TensorListGetItem?
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype022
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2#
!lstm_19/while/lstm_cell_19/MatMul?
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype024
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2%
#lstm_19/while/lstm_cell_19/MatMul_1?
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2 
lstm_19/while/lstm_cell_19/add?
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype023
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2$
"lstm_19/while/lstm_cell_19/BiasAdd?
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_19/while/lstm_cell_19/split/split_dim?
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2"
 lstm_19/while/lstm_cell_19/split?
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2$
"lstm_19/while/lstm_cell_19/Sigmoid?
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_1?
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:?????????
2 
lstm_19/while/lstm_cell_19/mul?
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_2?
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/mul_1?
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/add_1?
$lstm_19/while/lstm_cell_19/Sigmoid_3Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_3?
$lstm_19/while/lstm_cell_19/Sigmoid_4Sigmoid$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_4?
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_3:y:0(lstm_19/while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/mul_2?
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_19/while/TensorArrayV2Write/TensorListSetIteml
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/while/add/y?
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_19/while/addp
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/while/add_1/y?
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_19/while/add_1?
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity?
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_1?
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_2?
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_3?
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2
lstm_19/while/Identity_4?
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2
lstm_19/while/Identity_5?
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_19/while/NoOp"9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"?
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?	
?
.__inference_sequential_18_layer_call_fn_424576
lstm_19_input
unknown:(
	unknown_0:
(
	unknown_1:(
	unknown_2:

	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_4245632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_19_input
?
?
(__inference_lstm_19_layer_call_fn_425834
inputs_0
unknown:(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4239092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_423826

inputs

states
states_10
matmul_readvariableop_resource:(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02
MatMul_1/ReadVariableOpy
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
2
mulc
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:?????????
2
	Sigmoid_2c
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
2
add_1c
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
2
	Sigmoid_3^
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????
2
	Sigmoid_4e
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?

?
D__inference_dense_17_layer_call_and_return_conditional_losses_425877

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
)__inference_dense_17_layer_call_fn_425886

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4245562
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?7
?

__inference__traced_save_426073
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableopD
@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop8
4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopA
=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_19_lstm_cell_19_kernel_read_readvariableop@savev2_lstm_19_lstm_cell_19_recurrent_kernel_read_readvariableop4savev2_lstm_19_lstm_cell_19_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_m_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop=savev2_adam_lstm_19_lstm_cell_19_kernel_v_read_readvariableopGsavev2_adam_lstm_19_lstm_cell_19_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_19_lstm_cell_19_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:: : : : : :(:
(:(: : :
::(:
(:(:
::(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: 
??
?
while_body_425437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?s
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_425032

inputsE
3lstm_19_lstm_cell_19_matmul_readvariableop_resource:(G
5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource:
(B
4lstm_19_lstm_cell_19_biasadd_readvariableop_resource:(9
'dense_17_matmul_readvariableop_resource:
6
(dense_17_biasadd_readvariableop_resource:
identity??dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?*lstm_19/lstm_cell_19/MatMul/ReadVariableOp?,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?lstm_19/whileT
lstm_19/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_19/Shape?
lstm_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice/stack?
lstm_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_19/strided_slice/stack_1?
lstm_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_19/strided_slice/stack_2?
lstm_19/strided_sliceStridedSlicelstm_19/Shape:output:0$lstm_19/strided_slice/stack:output:0&lstm_19/strided_slice/stack_1:output:0&lstm_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_19/strided_slicel
lstm_19/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros/mul/y?
lstm_19/zeros/mulMullstm_19/strided_slice:output:0lstm_19/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros/mulo
lstm_19/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_19/zeros/Less/y?
lstm_19/zeros/LessLesslstm_19/zeros/mul:z:0lstm_19/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros/Lessr
lstm_19/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros/packed/1?
lstm_19/zeros/packedPacklstm_19/strided_slice:output:0lstm_19/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_19/zeros/packedo
lstm_19/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/zeros/Const?
lstm_19/zerosFilllstm_19/zeros/packed:output:0lstm_19/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/zerosp
lstm_19/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros_1/mul/y?
lstm_19/zeros_1/mulMullstm_19/strided_slice:output:0lstm_19/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros_1/muls
lstm_19/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_19/zeros_1/Less/y?
lstm_19/zeros_1/LessLesslstm_19/zeros_1/mul:z:0lstm_19/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_19/zeros_1/Lessv
lstm_19/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
lstm_19/zeros_1/packed/1?
lstm_19/zeros_1/packedPacklstm_19/strided_slice:output:0!lstm_19/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_19/zeros_1/packeds
lstm_19/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/zeros_1/Const?
lstm_19/zeros_1Filllstm_19/zeros_1/packed:output:0lstm_19/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/zeros_1?
lstm_19/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_19/transpose/perm?
lstm_19/transpose	Transposeinputslstm_19/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_19/transposeg
lstm_19/Shape_1Shapelstm_19/transpose:y:0*
T0*
_output_shapes
:2
lstm_19/Shape_1?
lstm_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice_1/stack?
lstm_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_1/stack_1?
lstm_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_1/stack_2?
lstm_19/strided_slice_1StridedSlicelstm_19/Shape_1:output:0&lstm_19/strided_slice_1/stack:output:0(lstm_19/strided_slice_1/stack_1:output:0(lstm_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_19/strided_slice_1?
#lstm_19/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_19/TensorArrayV2/element_shape?
lstm_19/TensorArrayV2TensorListReserve,lstm_19/TensorArrayV2/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_19/TensorArrayV2?
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_19/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_19/transpose:y:0Flstm_19/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_19/TensorArrayUnstack/TensorListFromTensor?
lstm_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_19/strided_slice_2/stack?
lstm_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_2/stack_1?
lstm_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_2/stack_2?
lstm_19/strided_slice_2StridedSlicelstm_19/transpose:y:0&lstm_19/strided_slice_2/stack:output:0(lstm_19/strided_slice_2/stack_1:output:0(lstm_19/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_19/strided_slice_2?
*lstm_19/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3lstm_19_lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02,
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp?
lstm_19/lstm_cell_19/MatMulMatMul lstm_19/strided_slice_2:output:02lstm_19/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/MatMul?
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02.
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_19/lstm_cell_19/MatMul_1MatMullstm_19/zeros:output:04lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/MatMul_1?
lstm_19/lstm_cell_19/addAddV2%lstm_19/lstm_cell_19/MatMul:product:0'lstm_19/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/add?
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02-
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_19/lstm_cell_19/BiasAddBiasAddlstm_19/lstm_cell_19/add:z:03lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_19/lstm_cell_19/BiasAdd?
$lstm_19/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_19/lstm_cell_19/split/split_dim?
lstm_19/lstm_cell_19/splitSplit-lstm_19/lstm_cell_19/split/split_dim:output:0%lstm_19/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_19/lstm_cell_19/split?
lstm_19/lstm_cell_19/SigmoidSigmoid#lstm_19/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/Sigmoid?
lstm_19/lstm_cell_19/Sigmoid_1Sigmoid#lstm_19/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_1?
lstm_19/lstm_cell_19/mulMul"lstm_19/lstm_cell_19/Sigmoid_1:y:0lstm_19/zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul?
lstm_19/lstm_cell_19/Sigmoid_2Sigmoid#lstm_19/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_2?
lstm_19/lstm_cell_19/mul_1Mul lstm_19/lstm_cell_19/Sigmoid:y:0"lstm_19/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul_1?
lstm_19/lstm_cell_19/add_1AddV2lstm_19/lstm_cell_19/mul:z:0lstm_19/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/add_1?
lstm_19/lstm_cell_19/Sigmoid_3Sigmoid#lstm_19/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_3?
lstm_19/lstm_cell_19/Sigmoid_4Sigmoidlstm_19/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2 
lstm_19/lstm_cell_19/Sigmoid_4?
lstm_19/lstm_cell_19/mul_2Mul"lstm_19/lstm_cell_19/Sigmoid_3:y:0"lstm_19/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_19/lstm_cell_19/mul_2?
%lstm_19/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2'
%lstm_19/TensorArrayV2_1/element_shape?
lstm_19/TensorArrayV2_1TensorListReserve.lstm_19/TensorArrayV2_1/element_shape:output:0 lstm_19/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_19/TensorArrayV2_1^
lstm_19/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_19/time?
 lstm_19/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_19/while/maximum_iterationsz
lstm_19/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_19/while/loop_counter?
lstm_19/whileWhile#lstm_19/while/loop_counter:output:0)lstm_19/while/maximum_iterations:output:0lstm_19/time:output:0 lstm_19/TensorArrayV2_1:handle:0lstm_19/zeros:output:0lstm_19/zeros_1:output:0 lstm_19/strided_slice_1:output:0?lstm_19/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_19_lstm_cell_19_matmul_readvariableop_resource5lstm_19_lstm_cell_19_matmul_1_readvariableop_resource4lstm_19_lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_19_while_body_424942*%
condR
lstm_19_while_cond_424941*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
lstm_19/while?
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2:
8lstm_19/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_19/TensorArrayV2Stack/TensorListStackTensorListStacklstm_19/while:output:3Alstm_19/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02,
*lstm_19/TensorArrayV2Stack/TensorListStack?
lstm_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_19/strided_slice_3/stack?
lstm_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_19/strided_slice_3/stack_1?
lstm_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_19/strided_slice_3/stack_2?
lstm_19/strided_slice_3StridedSlice3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_19/strided_slice_3/stack:output:0(lstm_19/strided_slice_3/stack_1:output:0(lstm_19/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
lstm_19/strided_slice_3?
lstm_19/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_19/transpose_1/perm?
lstm_19/transpose_1	Transpose3lstm_19/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_19/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
lstm_19/transpose_1v
lstm_19/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_19/runtime?
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02 
dense_17/MatMul/ReadVariableOp?
dense_17/MatMulMatMul lstm_19/strided_slice_3:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/MatMul?
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_17/BiasAdd/ReadVariableOp?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_17/BiasAddt
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp,^lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+^lstm_19/lstm_cell_19/MatMul/ReadVariableOp-^lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp^lstm_19/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2Z
+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp+lstm_19/lstm_cell_19/BiasAdd/ReadVariableOp2X
*lstm_19/lstm_cell_19/MatMul/ReadVariableOp*lstm_19/lstm_cell_19/MatMul/ReadVariableOp2\
,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp,lstm_19/lstm_cell_19/MatMul_1/ReadVariableOp2
lstm_19/whilelstm_19/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_17_layer_call_and_return_conditional_losses_424556

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?%
?
while_body_423840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_19_423864_0:(-
while_lstm_cell_19_423866_0:
()
while_lstm_cell_19_423868_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_19_423864:(+
while_lstm_cell_19_423866:
('
while_lstm_cell_19_423868:(??*while/lstm_cell_19/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_19/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_19_423864_0while_lstm_cell_19_423866_0while_lstm_cell_19_423868_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_4238262,
*while/lstm_cell_19/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_19/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_19/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_19/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp+^while/lstm_cell_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_19_423864while_lstm_cell_19_423864_0"8
while_lstm_cell_19_423866while_lstm_cell_19_423866_0"8
while_lstm_cell_19_423868while_lstm_cell_19_423868_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_19/StatefulPartitionedCall*while/lstm_cell_19/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
??
?
while_body_424666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?J
?

lstm_19_while_body_425099,
(lstm_19_while_lstm_19_while_loop_counter2
.lstm_19_while_lstm_19_while_maximum_iterations
lstm_19_while_placeholder
lstm_19_while_placeholder_1
lstm_19_while_placeholder_2
lstm_19_while_placeholder_3+
'lstm_19_while_lstm_19_strided_slice_1_0g
clstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0:(O
=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(J
<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0:(
lstm_19_while_identity
lstm_19_while_identity_1
lstm_19_while_identity_2
lstm_19_while_identity_3
lstm_19_while_identity_4
lstm_19_while_identity_5)
%lstm_19_while_lstm_19_strided_slice_1e
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorK
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource:(M
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource:
(H
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource:(??1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_19/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0lstm_19_while_placeholderHlstm_19/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_19/while/TensorArrayV2Read/TensorListGetItem?
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype022
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp?
!lstm_19/while/lstm_cell_19/MatMulMatMul8lstm_19/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2#
!lstm_19/while/lstm_cell_19/MatMul?
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype024
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp?
#lstm_19/while/lstm_cell_19/MatMul_1MatMullstm_19_while_placeholder_2:lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2%
#lstm_19/while/lstm_cell_19/MatMul_1?
lstm_19/while/lstm_cell_19/addAddV2+lstm_19/while/lstm_cell_19/MatMul:product:0-lstm_19/while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2 
lstm_19/while/lstm_cell_19/add?
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype023
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp?
"lstm_19/while/lstm_cell_19/BiasAddBiasAdd"lstm_19/while/lstm_cell_19/add:z:09lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2$
"lstm_19/while/lstm_cell_19/BiasAdd?
*lstm_19/while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_19/while/lstm_cell_19/split/split_dim?
 lstm_19/while/lstm_cell_19/splitSplit3lstm_19/while/lstm_cell_19/split/split_dim:output:0+lstm_19/while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2"
 lstm_19/while/lstm_cell_19/split?
"lstm_19/while/lstm_cell_19/SigmoidSigmoid)lstm_19/while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2$
"lstm_19/while/lstm_cell_19/Sigmoid?
$lstm_19/while/lstm_cell_19/Sigmoid_1Sigmoid)lstm_19/while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_1?
lstm_19/while/lstm_cell_19/mulMul(lstm_19/while/lstm_cell_19/Sigmoid_1:y:0lstm_19_while_placeholder_3*
T0*'
_output_shapes
:?????????
2 
lstm_19/while/lstm_cell_19/mul?
$lstm_19/while/lstm_cell_19/Sigmoid_2Sigmoid)lstm_19/while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_2?
 lstm_19/while/lstm_cell_19/mul_1Mul&lstm_19/while/lstm_cell_19/Sigmoid:y:0(lstm_19/while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/mul_1?
 lstm_19/while/lstm_cell_19/add_1AddV2"lstm_19/while/lstm_cell_19/mul:z:0$lstm_19/while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/add_1?
$lstm_19/while/lstm_cell_19/Sigmoid_3Sigmoid)lstm_19/while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_3?
$lstm_19/while/lstm_cell_19/Sigmoid_4Sigmoid$lstm_19/while/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2&
$lstm_19/while/lstm_cell_19/Sigmoid_4?
 lstm_19/while/lstm_cell_19/mul_2Mul(lstm_19/while/lstm_cell_19/Sigmoid_3:y:0(lstm_19/while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2"
 lstm_19/while/lstm_cell_19/mul_2?
2lstm_19/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_19_while_placeholder_1lstm_19_while_placeholder$lstm_19/while/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_19/while/TensorArrayV2Write/TensorListSetIteml
lstm_19/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/while/add/y?
lstm_19/while/addAddV2lstm_19_while_placeholderlstm_19/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_19/while/addp
lstm_19/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_19/while/add_1/y?
lstm_19/while/add_1AddV2(lstm_19_while_lstm_19_while_loop_counterlstm_19/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_19/while/add_1?
lstm_19/while/IdentityIdentitylstm_19/while/add_1:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity?
lstm_19/while/Identity_1Identity.lstm_19_while_lstm_19_while_maximum_iterations^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_1?
lstm_19/while/Identity_2Identitylstm_19/while/add:z:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_2?
lstm_19/while/Identity_3IdentityBlstm_19/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_19/while/NoOp*
T0*
_output_shapes
: 2
lstm_19/while/Identity_3?
lstm_19/while/Identity_4Identity$lstm_19/while/lstm_cell_19/mul_2:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2
lstm_19/while/Identity_4?
lstm_19/while/Identity_5Identity$lstm_19/while/lstm_cell_19/add_1:z:0^lstm_19/while/NoOp*
T0*'
_output_shapes
:?????????
2
lstm_19/while/Identity_5?
lstm_19/while/NoOpNoOp2^lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1^lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp3^lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_19/while/NoOp"9
lstm_19_while_identitylstm_19/while/Identity:output:0"=
lstm_19_while_identity_1!lstm_19/while/Identity_1:output:0"=
lstm_19_while_identity_2!lstm_19/while/Identity_2:output:0"=
lstm_19_while_identity_3!lstm_19/while/Identity_3:output:0"=
lstm_19_while_identity_4!lstm_19/while/Identity_4:output:0"=
lstm_19_while_identity_5!lstm_19/while/Identity_5:output:0"P
%lstm_19_while_lstm_19_strided_slice_1'lstm_19_while_lstm_19_strided_slice_1_0"z
:lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource<lstm_19_while_lstm_cell_19_biasadd_readvariableop_resource_0"|
;lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource=lstm_19_while_lstm_cell_19_matmul_1_readvariableop_resource_0"x
9lstm_19_while_lstm_cell_19_matmul_readvariableop_resource;lstm_19_while_lstm_cell_19_matmul_readvariableop_resource_0"?
alstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensorclstm_19_while_tensorarrayv2read_tensorlistgetitem_lstm_19_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp1lstm_19/while/lstm_cell_19/BiasAdd/ReadVariableOp2d
0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp0lstm_19/while/lstm_cell_19/MatMul/ReadVariableOp2h
2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp2lstm_19/while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425672

inputs=
+lstm_cell_19_matmul_readvariableop_resource:(?
-lstm_cell_19_matmul_1_readvariableop_resource:
(:
,lstm_cell_19_biasadd_readvariableop_resource:(
identity??#lstm_cell_19/BiasAdd/ReadVariableOp?"lstm_cell_19/MatMul/ReadVariableOp?$lstm_cell_19/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_19/MatMul/ReadVariableOpReadVariableOp+lstm_cell_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"lstm_cell_19/MatMul/ReadVariableOp?
lstm_cell_19/MatMulMatMulstrided_slice_2:output:0*lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul?
$lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_19_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype02&
$lstm_cell_19/MatMul_1/ReadVariableOp?
lstm_cell_19/MatMul_1MatMulzeros:output:0,lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/MatMul_1?
lstm_cell_19/addAddV2lstm_cell_19/MatMul:product:0lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/add?
#lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_19_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#lstm_cell_19/BiasAdd/ReadVariableOp?
lstm_cell_19/BiasAddBiasAddlstm_cell_19/add:z:0+lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
lstm_cell_19/BiasAdd~
lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_19/split/split_dim?
lstm_cell_19/splitSplit%lstm_cell_19/split/split_dim:output:0lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
lstm_cell_19/split?
lstm_cell_19/SigmoidSigmoidlstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid?
lstm_cell_19/Sigmoid_1Sigmoidlstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_1?
lstm_cell_19/mulMullstm_cell_19/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul?
lstm_cell_19/Sigmoid_2Sigmoidlstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_2?
lstm_cell_19/mul_1Mullstm_cell_19/Sigmoid:y:0lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_1?
lstm_cell_19/add_1AddV2lstm_cell_19/mul:z:0lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/add_1?
lstm_cell_19/Sigmoid_3Sigmoidlstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_3?
lstm_cell_19/Sigmoid_4Sigmoidlstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/Sigmoid_4?
lstm_cell_19/mul_2Mullstm_cell_19/Sigmoid_3:y:0lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
lstm_cell_19/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_19_matmul_readvariableop_resource-lstm_cell_19_matmul_1_readvariableop_resource,lstm_cell_19_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_425588*
condR
while_cond_425587*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp$^lstm_cell_19/BiasAdd/ReadVariableOp#^lstm_cell_19/MatMul/ReadVariableOp%^lstm_cell_19/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_19/BiasAdd/ReadVariableOp#lstm_cell_19/BiasAdd/ReadVariableOp2H
"lstm_cell_19/MatMul/ReadVariableOp"lstm_cell_19/MatMul/ReadVariableOp2L
$lstm_cell_19/MatMul_1/ReadVariableOp$lstm_cell_19/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_425436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_425436___redundant_placeholder04
0while_while_cond_425436___redundant_placeholder14
0while_while_cond_425436___redundant_placeholder24
0while_while_cond_425436___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
??
?
while_body_425588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_19_matmul_readvariableop_resource_0:(G
5while_lstm_cell_19_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_19_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_19_matmul_readvariableop_resource:(E
3while_lstm_cell_19_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_19_biasadd_readvariableop_resource:(??)while/lstm_cell_19/BiasAdd/ReadVariableOp?(while/lstm_cell_19/MatMul/ReadVariableOp?*while/lstm_cell_19/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_19/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_19_matmul_readvariableop_resource_0*
_output_shapes

:(*
dtype02*
(while/lstm_cell_19/MatMul/ReadVariableOp?
while/lstm_cell_19/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul?
*while/lstm_cell_19/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_19_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype02,
*while/lstm_cell_19/MatMul_1/ReadVariableOp?
while/lstm_cell_19/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_19/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/MatMul_1?
while/lstm_cell_19/addAddV2#while/lstm_cell_19/MatMul:product:0%while/lstm_cell_19/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/add?
)while/lstm_cell_19/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_19_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype02+
)while/lstm_cell_19/BiasAdd/ReadVariableOp?
while/lstm_cell_19/BiasAddBiasAddwhile/lstm_cell_19/add:z:01while/lstm_cell_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
while/lstm_cell_19/BiasAdd?
"while/lstm_cell_19/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_19/split/split_dim?
while/lstm_cell_19/splitSplit+while/lstm_cell_19/split/split_dim:output:0#while/lstm_cell_19/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split2
while/lstm_cell_19/split?
while/lstm_cell_19/SigmoidSigmoid!while/lstm_cell_19/split:output:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid?
while/lstm_cell_19/Sigmoid_1Sigmoid!while/lstm_cell_19/split:output:1*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_1?
while/lstm_cell_19/mulMul while/lstm_cell_19/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul?
while/lstm_cell_19/Sigmoid_2Sigmoid!while/lstm_cell_19/split:output:2*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_2?
while/lstm_cell_19/mul_1Mulwhile/lstm_cell_19/Sigmoid:y:0 while/lstm_cell_19/Sigmoid_2:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_1?
while/lstm_cell_19/add_1AddV2while/lstm_cell_19/mul:z:0while/lstm_cell_19/mul_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/add_1?
while/lstm_cell_19/Sigmoid_3Sigmoid!while/lstm_cell_19/split:output:3*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_3?
while/lstm_cell_19/Sigmoid_4Sigmoidwhile/lstm_cell_19/add_1:z:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/Sigmoid_4?
while/lstm_cell_19/mul_2Mul while/lstm_cell_19/Sigmoid_3:y:0 while/lstm_cell_19/Sigmoid_4:y:0*
T0*'
_output_shapes
:?????????
2
while/lstm_cell_19/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_19/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_19/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_19/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_19/BiasAdd/ReadVariableOp)^while/lstm_cell_19/MatMul/ReadVariableOp+^while/lstm_cell_19/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_19_biasadd_readvariableop_resource4while_lstm_cell_19_biasadd_readvariableop_resource_0"l
3while_lstm_cell_19_matmul_1_readvariableop_resource5while_lstm_cell_19_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_19_matmul_readvariableop_resource3while_lstm_cell_19_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_19/BiasAdd/ReadVariableOp)while/lstm_cell_19/BiasAdd/ReadVariableOp2T
(while/lstm_cell_19/MatMul/ReadVariableOp(while/lstm_cell_19/MatMul/ReadVariableOp2X
*while/lstm_cell_19/MatMul_1/ReadVariableOp*while/lstm_cell_19/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424792

inputs 
lstm_19_424779:( 
lstm_19_424781:
(
lstm_19_424783:(!
dense_17_424786:

dense_17_424788:
identity?? dense_17/StatefulPartitionedCall?lstm_19/StatefulPartitionedCall?
lstm_19/StatefulPartitionedCallStatefulPartitionedCallinputslstm_19_424779lstm_19_424781lstm_19_424783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_19_layer_call_and_return_conditional_losses_4247502!
lstm_19/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall(lstm_19/StatefulPartitionedCall:output:0dense_17_424786dense_17_424788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_4245562"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_17/StatefulPartitionedCall ^lstm_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
lstm_19/StatefulPartitionedCalllstm_19/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_19_input:
serving_default_lstm_19_input:0?????????<
dense_170
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?c
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
*F&call_and_return_all_conditional_losses
G__call__
H_default_save_signature"
_tf_keras_sequential
?
	cell


state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*I&call_and_return_all_conditional_losses
J__call__"
_tf_keras_rnn_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*K&call_and_return_all_conditional_losses
L__call__"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
?
metrics
layer_regularization_losses
	variables
regularization_losses

layers
 non_trainable_variables
trainable_variables
!layer_metrics
G__call__
H_default_save_signature
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
?
"
state_size

kernel
recurrent_kernel
bias
#	variables
$regularization_losses
%trainable_variables
&	keras_api
*N&call_and_return_all_conditional_losses
O__call__"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
'metrics
(layer_regularization_losses
	variables
regularization_losses

)layers
*non_trainable_variables
trainable_variables
+layer_metrics

,states
J__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_17/kernel
:2dense_17/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
-metrics
.layer_regularization_losses
	variables
regularization_losses

/layers
0non_trainable_variables
trainable_variables
1layer_metrics
L__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+(2lstm_19/lstm_cell_19/kernel
7:5
(2%lstm_19/lstm_cell_19/recurrent_kernel
':%(2lstm_19/lstm_cell_19/bias
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
3metrics
4layer_regularization_losses
#	variables
$regularization_losses

5layers
6non_trainable_variables
%trainable_variables
7layer_metrics
O__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
&:$
2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
2:0(2"Adam/lstm_19/lstm_cell_19/kernel/m
<::
(2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/m
,:*(2 Adam/lstm_19/lstm_cell_19/bias/m
&:$
2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
2:0(2"Adam/lstm_19/lstm_cell_19/kernel/v
<::
(2,Adam/lstm_19/lstm_cell_19/recurrent_kernel/v
,:*(2 Adam/lstm_19/lstm_cell_19/bias/v
?2?
I__inference_sequential_18_layer_call_and_return_conditional_losses_425032
I__inference_sequential_18_layer_call_and_return_conditional_losses_425189
I__inference_sequential_18_layer_call_and_return_conditional_losses_424836
I__inference_sequential_18_layer_call_and_return_conditional_losses_424852?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_18_layer_call_fn_424576
.__inference_sequential_18_layer_call_fn_425204
.__inference_sequential_18_layer_call_fn_425219
.__inference_sequential_18_layer_call_fn_424820?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_423751lstm_19_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425370
C__inference_lstm_19_layer_call_and_return_conditional_losses_425521
C__inference_lstm_19_layer_call_and_return_conditional_losses_425672
C__inference_lstm_19_layer_call_and_return_conditional_losses_425823?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_19_layer_call_fn_425834
(__inference_lstm_19_layer_call_fn_425845
(__inference_lstm_19_layer_call_fn_425856
(__inference_lstm_19_layer_call_fn_425867?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_17_layer_call_and_return_conditional_losses_425877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_17_layer_call_fn_425886?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_424875lstm_19_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425918
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425950?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_lstm_cell_19_layer_call_fn_425967
-__inference_lstm_cell_19_layer_call_fn_425984?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_423751x:?7
0?-
+?(
lstm_19_input?????????
? "3?0
.
dense_17"?
dense_17??????????
D__inference_dense_17_layer_call_and_return_conditional_losses_425877\/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? |
)__inference_dense_17_layer_call_fn_425886O/?,
%?"
 ?
inputs?????????

? "???????????
C__inference_lstm_19_layer_call_and_return_conditional_losses_425370}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"
?
0?????????

? ?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425521}O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"
?
0?????????

? ?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425672m??<
5?2
$?!
inputs?????????

 
p 

 
? "%?"
?
0?????????

? ?
C__inference_lstm_19_layer_call_and_return_conditional_losses_425823m??<
5?2
$?!
inputs?????????

 
p

 
? "%?"
?
0?????????

? ?
(__inference_lstm_19_layer_call_fn_425834pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "??????????
?
(__inference_lstm_19_layer_call_fn_425845pO?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "??????????
?
(__inference_lstm_19_layer_call_fn_425856`??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????
?
(__inference_lstm_19_layer_call_fn_425867`??<
5?2
$?!
inputs?????????

 
p

 
? "??????????
?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425918???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
H__inference_lstm_cell_19_layer_call_and_return_conditional_losses_425950???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????

"?
states/1?????????

p
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
-__inference_lstm_cell_19_layer_call_fn_425967???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
-__inference_lstm_cell_19_layer_call_fn_425984???}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????

"?
states/1?????????

p
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424836rB??
8?5
+?(
lstm_19_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_18_layer_call_and_return_conditional_losses_424852rB??
8?5
+?(
lstm_19_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_18_layer_call_and_return_conditional_losses_425032k;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_18_layer_call_and_return_conditional_losses_425189k;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_18_layer_call_fn_424576eB??
8?5
+?(
lstm_19_input?????????
p 

 
? "???????????
.__inference_sequential_18_layer_call_fn_424820eB??
8?5
+?(
lstm_19_input?????????
p

 
? "???????????
.__inference_sequential_18_layer_call_fn_425204^;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_18_layer_call_fn_425219^;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_424875?K?H
? 
A?>
<
lstm_19_input+?(
lstm_19_input?????????"3?0
.
dense_17"?
dense_17?????????