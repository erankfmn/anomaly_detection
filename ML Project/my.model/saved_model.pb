??
??
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv1d_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv1d_83/kernel
y
$conv1d_83/kernel/Read/ReadVariableOpReadVariableOpconv1d_83/kernel*"
_output_shapes
:@*
dtype0
t
conv1d_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_83/bias
m
"conv1d_83/bias/Read/ReadVariableOpReadVariableOpconv1d_83/bias*
_output_shapes
:@*
dtype0
{
dense_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? * 
shared_namedense_82/kernel
t
#dense_82/kernel/Read/ReadVariableOpReadVariableOpdense_82/kernel*
_output_shapes
:	? *
dtype0
r
dense_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_82/bias
k
!dense_82/bias/Read/ReadVariableOpReadVariableOpdense_82/bias*
_output_shapes
: *
dtype0
z
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_83/kernel
s
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel*
_output_shapes

: *
dtype0
r
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv1d_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv1d_83/kernel/m
?
+Adam/conv1d_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_83/kernel/m*"
_output_shapes
:@*
dtype0
?
Adam/conv1d_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_83/bias/m
{
)Adam/conv1d_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_83/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameAdam/dense_82/kernel/m
?
*Adam/dense_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/m*
_output_shapes
:	? *
dtype0
?
Adam/dense_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_82/bias/m
y
(Adam/dense_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_83/kernel/m
?
*Adam/dense_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/m
y
(Adam/dense_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv1d_83/kernel/v
?
+Adam/conv1d_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_83/kernel/v*"
_output_shapes
:@*
dtype0
?
Adam/conv1d_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv1d_83/bias/v
{
)Adam/conv1d_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_83/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameAdam/dense_82/kernel/v
?
*Adam/dense_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/v*
_output_shapes
:	? *
dtype0
?
Adam/dense_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_82/bias/v
y
(Adam/dense_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_83/kernel/v
?
*Adam/dense_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/v
y
(Adam/dense_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?&
value?&B?& B?&
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
?
!iter

"beta_1

#beta_2
	$decaymImJmKmLmMmNvOvPvQvRvSvT
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
	variables
%non_trainable_variables
trainable_variables
&layer_regularization_losses
'metrics
regularization_losses
(layer_metrics

)layers
 
\Z
VARIABLE_VALUEconv1d_83/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_83/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
*non_trainable_variables
trainable_variables
+layer_regularization_losses
,metrics
regularization_losses
-layer_metrics

.layers
 
 
 
?
	variables
/non_trainable_variables
trainable_variables
0layer_regularization_losses
1metrics
regularization_losses
2layer_metrics

3layers
[Y
VARIABLE_VALUEdense_82/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_82/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
4non_trainable_variables
trainable_variables
5layer_regularization_losses
6metrics
regularization_losses
7layer_metrics

8layers
[Y
VARIABLE_VALUEdense_83/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_83/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
9non_trainable_variables
trainable_variables
:layer_regularization_losses
;metrics
regularization_losses
<layer_metrics

=layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
 
 

>0
?1
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	@total
	Acount
B	variables
C	keras_api
D
	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

B	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

G	variables
}
VARIABLE_VALUEAdam/conv1d_83/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_83/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_82/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_83/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_83/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_83/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_82/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_82/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_83/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1d_83_inputPlaceholder*+
_output_shapes
:?????????<*
dtype0* 
shape:?????????<
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_83_inputconv1d_83/kernelconv1d_83/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_2941600
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_83/kernel/Read/ReadVariableOp"conv1d_83/bias/Read/ReadVariableOp#dense_82/kernel/Read/ReadVariableOp!dense_82/bias/Read/ReadVariableOp#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv1d_83/kernel/m/Read/ReadVariableOp)Adam/conv1d_83/bias/m/Read/ReadVariableOp*Adam/dense_82/kernel/m/Read/ReadVariableOp(Adam/dense_82/bias/m/Read/ReadVariableOp*Adam/dense_83/kernel/m/Read/ReadVariableOp(Adam/dense_83/bias/m/Read/ReadVariableOp+Adam/conv1d_83/kernel/v/Read/ReadVariableOp)Adam/conv1d_83/bias/v/Read/ReadVariableOp*Adam/dense_82/kernel/v/Read/ReadVariableOp(Adam/dense_82/bias/v/Read/ReadVariableOp*Adam/dense_83/kernel/v/Read/ReadVariableOp(Adam/dense_83/bias/v/Read/ReadVariableOpConst*'
Tin 
2	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_2941872
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_83/kernelconv1d_83/biasdense_82/kerneldense_82/biasdense_83/kerneldense_83/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcounttotal_1count_1Adam/conv1d_83/kernel/mAdam/conv1d_83/bias/mAdam/dense_82/kernel/mAdam/dense_82/bias/mAdam/dense_83/kernel/mAdam/dense_83/bias/mAdam/conv1d_83/kernel/vAdam/conv1d_83/bias/vAdam/dense_82/kernel/vAdam/dense_82/bias/vAdam/dense_83/kernel/vAdam/dense_83/bias/v*&
Tin
2*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_2941960إ
?
?
%__inference_signature_wrapper_2941600
conv1d_83_input
unknown:@
	unknown_0:@
	unknown_1:	? 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_83_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_29413442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941557
conv1d_83_input'
conv1d_83_2941540:@
conv1d_83_2941542:@#
dense_82_2941546:	? 
dense_82_2941548: "
dense_83_2941551: 
dense_83_2941553:
identity??!conv1d_83/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
!conv1d_83/StatefulPartitionedCallStatefulPartitionedCallconv1d_83_inputconv1d_83_2941540conv1d_83_2941542*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????6@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv1d_83_layer_call_and_return_conditional_losses_29413672#
!conv1d_83/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall*conv1d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_29413792
flatten_41/PartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_82_2941546dense_82_2941548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_29413922"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_2941551dense_83_2941553*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_29414082"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0"^conv1d_83/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2F
!conv1d_83/StatefulPartitionedCall!conv1d_83/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?

?
E__inference_dense_82_layer_call_and_return_conditional_losses_2941392

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_41_layer_call_fn_2941430
conv1d_83_input
unknown:@
	unknown_0:@
	unknown_1:	? 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_83_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_29414152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941577
conv1d_83_input'
conv1d_83_2941560:@
conv1d_83_2941562:@#
dense_82_2941566:	? 
dense_82_2941568: "
dense_83_2941571: 
dense_83_2941573:
identity??!conv1d_83/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
!conv1d_83/StatefulPartitionedCallStatefulPartitionedCallconv1d_83_inputconv1d_83_2941560conv1d_83_2941562*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????6@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv1d_83_layer_call_and_return_conditional_losses_29413672#
!conv1d_83/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall*conv1d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_29413792
flatten_41/PartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_82_2941566dense_82_2941568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_29413922"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_2941571dense_83_2941573*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_29414082"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0"^conv1d_83/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2F
!conv1d_83/StatefulPartitionedCall!conv1d_83/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?
c
G__inference_flatten_41_layer_call_and_return_conditional_losses_2941379

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6@:S O
+
_output_shapes
:?????????6@
 
_user_specified_nameinputs
?
?
*__inference_dense_82_layer_call_fn_2941741

inputs
unknown:	? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_29413922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_41_layer_call_fn_2941634

inputs
unknown:@
	unknown_0:@
	unknown_1:	? 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_29415052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
c
G__inference_flatten_41_layer_call_and_return_conditional_losses_2941732

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6@:S O
+
_output_shapes
:?????????6@
 
_user_specified_nameinputs
?	
?
E__inference_dense_83_layer_call_and_return_conditional_losses_2941771

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
H
,__inference_flatten_41_layer_call_fn_2941726

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_29413792
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6@:S O
+
_output_shapes
:?????????6@
 
_user_specified_nameinputs
?
?
+__inference_conv1d_83_layer_call_fn_2941705

inputs
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????6@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv1d_83_layer_call_and_return_conditional_losses_29413672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????6@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?(
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941665

inputsK
5conv1d_83_conv1d_expanddims_1_readvariableop_resource:@7
)conv1d_83_biasadd_readvariableop_resource:@:
'dense_82_matmul_readvariableop_resource:	? 6
(dense_82_biasadd_readvariableop_resource: 9
'dense_83_matmul_readvariableop_resource: 6
(dense_83_biasadd_readvariableop_resource:
identity?? conv1d_83/BiasAdd/ReadVariableOp?,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?
conv1d_83/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_83/conv1d/ExpandDims/dim?
conv1d_83/conv1d/ExpandDims
ExpandDimsinputs(conv1d_83/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<2
conv1d_83/conv1d/ExpandDims?
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_83_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02.
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_83/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_83/conv1d/ExpandDims_1/dim?
conv1d_83/conv1d/ExpandDims_1
ExpandDims4conv1d_83/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_83/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d_83/conv1d/ExpandDims_1?
conv1d_83/conv1dConv2D$conv1d_83/conv1d/ExpandDims:output:0&conv1d_83/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????6@*
paddingVALID*
strides
2
conv1d_83/conv1d?
conv1d_83/conv1d/SqueezeSqueezeconv1d_83/conv1d:output:0*
T0*+
_output_shapes
:?????????6@*
squeeze_dims

?????????2
conv1d_83/conv1d/Squeeze?
 conv1d_83/BiasAdd/ReadVariableOpReadVariableOp)conv1d_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv1d_83/BiasAdd/ReadVariableOp?
conv1d_83/BiasAddBiasAdd!conv1d_83/conv1d/Squeeze:output:0(conv1d_83/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????6@2
conv1d_83/BiasAddz
conv1d_83/ReluReluconv1d_83/BiasAdd:output:0*
T0*+
_output_shapes
:?????????6@2
conv1d_83/Reluu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_41/Const?
flatten_41/ReshapeReshapeconv1d_83/Relu:activations:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02 
dense_82/MatMul/ReadVariableOp?
dense_82/MatMulMatMulflatten_41/Reshape:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_82/MatMul?
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_82/BiasAdd/ReadVariableOp?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_82/BiasAdds
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_82/Relu?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_83/MatMul/ReadVariableOp?
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/MatMul?
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_83/BiasAdd/ReadVariableOp?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/BiasAdd?
IdentityIdentitydense_83/BiasAdd:output:0!^conv1d_83/BiasAdd/ReadVariableOp-^conv1d_83/conv1d/ExpandDims_1/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2D
 conv1d_83/BiasAdd/ReadVariableOp conv1d_83/BiasAdd/ReadVariableOp2\
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?	
?
E__inference_dense_83_layer_call_and_return_conditional_losses_2941408

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_conv1d_83_layer_call_and_return_conditional_losses_2941721

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????6@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????6@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????6@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????6@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????6@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?(
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941696

inputsK
5conv1d_83_conv1d_expanddims_1_readvariableop_resource:@7
)conv1d_83_biasadd_readvariableop_resource:@:
'dense_82_matmul_readvariableop_resource:	? 6
(dense_82_biasadd_readvariableop_resource: 9
'dense_83_matmul_readvariableop_resource: 6
(dense_83_biasadd_readvariableop_resource:
identity?? conv1d_83/BiasAdd/ReadVariableOp?,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?dense_82/BiasAdd/ReadVariableOp?dense_82/MatMul/ReadVariableOp?dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?
conv1d_83/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_83/conv1d/ExpandDims/dim?
conv1d_83/conv1d/ExpandDims
ExpandDimsinputs(conv1d_83/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<2
conv1d_83/conv1d/ExpandDims?
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_83_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02.
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_83/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_83/conv1d/ExpandDims_1/dim?
conv1d_83/conv1d/ExpandDims_1
ExpandDims4conv1d_83/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_83/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d_83/conv1d/ExpandDims_1?
conv1d_83/conv1dConv2D$conv1d_83/conv1d/ExpandDims:output:0&conv1d_83/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????6@*
paddingVALID*
strides
2
conv1d_83/conv1d?
conv1d_83/conv1d/SqueezeSqueezeconv1d_83/conv1d:output:0*
T0*+
_output_shapes
:?????????6@*
squeeze_dims

?????????2
conv1d_83/conv1d/Squeeze?
 conv1d_83/BiasAdd/ReadVariableOpReadVariableOp)conv1d_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv1d_83/BiasAdd/ReadVariableOp?
conv1d_83/BiasAddBiasAdd!conv1d_83/conv1d/Squeeze:output:0(conv1d_83/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????6@2
conv1d_83/BiasAddz
conv1d_83/ReluReluconv1d_83/BiasAdd:output:0*
T0*+
_output_shapes
:?????????6@2
conv1d_83/Reluu
flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_41/Const?
flatten_41/ReshapeReshapeconv1d_83/Relu:activations:0flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_41/Reshape?
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02 
dense_82/MatMul/ReadVariableOp?
dense_82/MatMulMatMulflatten_41/Reshape:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_82/MatMul?
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_82/BiasAdd/ReadVariableOp?
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_82/BiasAdds
dense_82/ReluReludense_82/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_82/Relu?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_83/MatMul/ReadVariableOp?
dense_83/MatMulMatMuldense_82/Relu:activations:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/MatMul?
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_83/BiasAdd/ReadVariableOp?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_83/BiasAdd?
IdentityIdentitydense_83/BiasAdd:output:0!^conv1d_83/BiasAdd/ReadVariableOp-^conv1d_83/conv1d/ExpandDims_1/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2D
 conv1d_83/BiasAdd/ReadVariableOp conv1d_83/BiasAdd/ReadVariableOp2\
,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp,conv1d_83/conv1d/ExpandDims_1/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
F__inference_conv1d_83_layer_call_and_return_conditional_losses_2941367

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????6@*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????6@*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????6@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????6@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*+
_output_shapes
:?????????6@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?p
?
#__inference__traced_restore_2941960
file_prefix7
!assignvariableop_conv1d_83_kernel:@/
!assignvariableop_1_conv1d_83_bias:@5
"assignvariableop_2_dense_82_kernel:	? .
 assignvariableop_3_dense_82_bias: 4
"assignvariableop_4_dense_83_kernel: .
 assignvariableop_5_dense_83_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: A
+assignvariableop_14_adam_conv1d_83_kernel_m:@7
)assignvariableop_15_adam_conv1d_83_bias_m:@=
*assignvariableop_16_adam_dense_82_kernel_m:	? 6
(assignvariableop_17_adam_dense_82_bias_m: <
*assignvariableop_18_adam_dense_83_kernel_m: 6
(assignvariableop_19_adam_dense_83_bias_m:A
+assignvariableop_20_adam_conv1d_83_kernel_v:@7
)assignvariableop_21_adam_conv1d_83_bias_v:@=
*assignvariableop_22_adam_dense_82_kernel_v:	? 6
(assignvariableop_23_adam_dense_82_bias_v: <
*assignvariableop_24_adam_dense_83_kernel_v: 6
(assignvariableop_25_adam_dense_83_bias_v:
identity_27??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_83_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_83_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_82_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_82_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_83_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_83_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
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
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_conv1d_83_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_conv1d_83_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_82_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_82_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_83_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_83_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv1d_83_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_conv1d_83_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_82_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_82_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_83_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_83_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_259
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26?
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
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
?
?
/__inference_sequential_41_layer_call_fn_2941617

inputs
unknown:@
	unknown_0:@
	unknown_1:	? 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_29414152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?3
?
"__inference__wrapped_model_2941344
conv1d_83_inputY
Csequential_41_conv1d_83_conv1d_expanddims_1_readvariableop_resource:@E
7sequential_41_conv1d_83_biasadd_readvariableop_resource:@H
5sequential_41_dense_82_matmul_readvariableop_resource:	? D
6sequential_41_dense_82_biasadd_readvariableop_resource: G
5sequential_41_dense_83_matmul_readvariableop_resource: D
6sequential_41_dense_83_biasadd_readvariableop_resource:
identity??.sequential_41/conv1d_83/BiasAdd/ReadVariableOp?:sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?-sequential_41/dense_82/BiasAdd/ReadVariableOp?,sequential_41/dense_82/MatMul/ReadVariableOp?-sequential_41/dense_83/BiasAdd/ReadVariableOp?,sequential_41/dense_83/MatMul/ReadVariableOp?
-sequential_41/conv1d_83/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_41/conv1d_83/conv1d/ExpandDims/dim?
)sequential_41/conv1d_83/conv1d/ExpandDims
ExpandDimsconv1d_83_input6sequential_41/conv1d_83/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????<2+
)sequential_41/conv1d_83/conv1d/ExpandDims?
:sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_41_conv1d_83_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype02<
:sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp?
/sequential_41/conv1d_83/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_41/conv1d_83/conv1d/ExpandDims_1/dim?
+sequential_41/conv1d_83/conv1d/ExpandDims_1
ExpandDimsBsequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp:value:08sequential_41/conv1d_83/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@2-
+sequential_41/conv1d_83/conv1d/ExpandDims_1?
sequential_41/conv1d_83/conv1dConv2D2sequential_41/conv1d_83/conv1d/ExpandDims:output:04sequential_41/conv1d_83/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????6@*
paddingVALID*
strides
2 
sequential_41/conv1d_83/conv1d?
&sequential_41/conv1d_83/conv1d/SqueezeSqueeze'sequential_41/conv1d_83/conv1d:output:0*
T0*+
_output_shapes
:?????????6@*
squeeze_dims

?????????2(
&sequential_41/conv1d_83/conv1d/Squeeze?
.sequential_41/conv1d_83/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_conv1d_83_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_41/conv1d_83/BiasAdd/ReadVariableOp?
sequential_41/conv1d_83/BiasAddBiasAdd/sequential_41/conv1d_83/conv1d/Squeeze:output:06sequential_41/conv1d_83/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????6@2!
sequential_41/conv1d_83/BiasAdd?
sequential_41/conv1d_83/ReluRelu(sequential_41/conv1d_83/BiasAdd:output:0*
T0*+
_output_shapes
:?????????6@2
sequential_41/conv1d_83/Relu?
sequential_41/flatten_41/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2 
sequential_41/flatten_41/Const?
 sequential_41/flatten_41/ReshapeReshape*sequential_41/conv1d_83/Relu:activations:0'sequential_41/flatten_41/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_41/flatten_41/Reshape?
,sequential_41/dense_82/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_82_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02.
,sequential_41/dense_82/MatMul/ReadVariableOp?
sequential_41/dense_82/MatMulMatMul)sequential_41/flatten_41/Reshape:output:04sequential_41/dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential_41/dense_82/MatMul?
-sequential_41/dense_82/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_82_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_41/dense_82/BiasAdd/ReadVariableOp?
sequential_41/dense_82/BiasAddBiasAdd'sequential_41/dense_82/MatMul:product:05sequential_41/dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2 
sequential_41/dense_82/BiasAdd?
sequential_41/dense_82/ReluRelu'sequential_41/dense_82/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential_41/dense_82/Relu?
,sequential_41/dense_83/MatMul/ReadVariableOpReadVariableOp5sequential_41_dense_83_matmul_readvariableop_resource*
_output_shapes

: *
dtype02.
,sequential_41/dense_83/MatMul/ReadVariableOp?
sequential_41/dense_83/MatMulMatMul)sequential_41/dense_82/Relu:activations:04sequential_41/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_41/dense_83/MatMul?
-sequential_41/dense_83/BiasAdd/ReadVariableOpReadVariableOp6sequential_41_dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_41/dense_83/BiasAdd/ReadVariableOp?
sequential_41/dense_83/BiasAddBiasAdd'sequential_41/dense_83/MatMul:product:05sequential_41/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_41/dense_83/BiasAdd?
IdentityIdentity'sequential_41/dense_83/BiasAdd:output:0/^sequential_41/conv1d_83/BiasAdd/ReadVariableOp;^sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp.^sequential_41/dense_82/BiasAdd/ReadVariableOp-^sequential_41/dense_82/MatMul/ReadVariableOp.^sequential_41/dense_83/BiasAdd/ReadVariableOp-^sequential_41/dense_83/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2`
.sequential_41/conv1d_83/BiasAdd/ReadVariableOp.sequential_41/conv1d_83/BiasAdd/ReadVariableOp2x
:sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp:sequential_41/conv1d_83/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_41/dense_82/BiasAdd/ReadVariableOp-sequential_41/dense_82/BiasAdd/ReadVariableOp2\
,sequential_41/dense_82/MatMul/ReadVariableOp,sequential_41/dense_82/MatMul/ReadVariableOp2^
-sequential_41/dense_83/BiasAdd/ReadVariableOp-sequential_41/dense_83/BiasAdd/ReadVariableOp2\
,sequential_41/dense_83/MatMul/ReadVariableOp,sequential_41/dense_83/MatMul/ReadVariableOp:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?
?
/__inference_sequential_41_layer_call_fn_2941537
conv1d_83_input
unknown:@
	unknown_0:@
	unknown_1:	? 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_83_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_41_layer_call_and_return_conditional_losses_29415052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????<
)
_user_specified_nameconv1d_83_input
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941505

inputs'
conv1d_83_2941488:@
conv1d_83_2941490:@#
dense_82_2941494:	? 
dense_82_2941496: "
dense_83_2941499: 
dense_83_2941501:
identity??!conv1d_83/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
!conv1d_83/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_83_2941488conv1d_83_2941490*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????6@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv1d_83_layer_call_and_return_conditional_losses_29413672#
!conv1d_83/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall*conv1d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_29413792
flatten_41/PartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_82_2941494dense_82_2941496*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_29413922"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_2941499dense_83_2941501*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_29414082"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0"^conv1d_83/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2F
!conv1d_83/StatefulPartitionedCall!conv1d_83/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?
?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941415

inputs'
conv1d_83_2941368:@
conv1d_83_2941370:@#
dense_82_2941393:	? 
dense_82_2941395: "
dense_83_2941409: 
dense_83_2941411:
identity??!conv1d_83/StatefulPartitionedCall? dense_82/StatefulPartitionedCall? dense_83/StatefulPartitionedCall?
!conv1d_83/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_83_2941368conv1d_83_2941370*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????6@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_conv1d_83_layer_call_and_return_conditional_losses_29413672#
!conv1d_83/StatefulPartitionedCall?
flatten_41/PartitionedCallPartitionedCall*conv1d_83/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_41_layer_call_and_return_conditional_losses_29413792
flatten_41/PartitionedCall?
 dense_82/StatefulPartitionedCallStatefulPartitionedCall#flatten_41/PartitionedCall:output:0dense_82_2941393dense_82_2941395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_29413922"
 dense_82/StatefulPartitionedCall?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_2941409dense_83_2941411*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_29414082"
 dense_83/StatefulPartitionedCall?
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0"^conv1d_83/StatefulPartitionedCall!^dense_82/StatefulPartitionedCall!^dense_83/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<: : : : : : 2F
!conv1d_83/StatefulPartitionedCall!conv1d_83/StatefulPartitionedCall2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall:S O
+
_output_shapes
:?????????<
 
_user_specified_nameinputs
?

?
E__inference_dense_82_layer_call_and_return_conditional_losses_2941752

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_dense_83_layer_call_fn_2941761

inputs
unknown: 
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_29414082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?<
?

 __inference__traced_save_2941872
file_prefix/
+savev2_conv1d_83_kernel_read_readvariableop-
)savev2_conv1d_83_bias_read_readvariableop.
*savev2_dense_82_kernel_read_readvariableop,
(savev2_dense_82_bias_read_readvariableop.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv1d_83_kernel_m_read_readvariableop4
0savev2_adam_conv1d_83_bias_m_read_readvariableop5
1savev2_adam_dense_82_kernel_m_read_readvariableop3
/savev2_adam_dense_82_bias_m_read_readvariableop5
1savev2_adam_dense_83_kernel_m_read_readvariableop3
/savev2_adam_dense_83_bias_m_read_readvariableop6
2savev2_adam_conv1d_83_kernel_v_read_readvariableop4
0savev2_adam_conv1d_83_bias_v_read_readvariableop5
1savev2_adam_dense_82_kernel_v_read_readvariableop3
/savev2_adam_dense_82_bias_v_read_readvariableop5
1savev2_adam_dense_83_kernel_v_read_readvariableop3
/savev2_adam_dense_83_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_83_kernel_read_readvariableop)savev2_conv1d_83_bias_read_readvariableop*savev2_dense_82_kernel_read_readvariableop(savev2_dense_82_bias_read_readvariableop*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv1d_83_kernel_m_read_readvariableop0savev2_adam_conv1d_83_bias_m_read_readvariableop1savev2_adam_dense_82_kernel_m_read_readvariableop/savev2_adam_dense_82_bias_m_read_readvariableop1savev2_adam_dense_83_kernel_m_read_readvariableop/savev2_adam_dense_83_bias_m_read_readvariableop2savev2_adam_conv1d_83_kernel_v_read_readvariableop0savev2_adam_conv1d_83_bias_v_read_readvariableop1savev2_adam_dense_82_kernel_v_read_readvariableop/savev2_adam_dense_82_bias_v_read_readvariableop1savev2_adam_dense_83_kernel_v_read_readvariableop/savev2_adam_dense_83_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	2
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

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:@:	? : : :: : : : : : : : :@:@:	? : : ::@:@:	? : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::($
"
_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
conv1d_83_input<
!serving_default_conv1d_83_input:0?????????<<
dense_830
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?.
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
U__call__
*V&call_and_return_all_conditional_losses
W_default_save_signature"?+
_tf_keras_sequential?+{"name": "sequential_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_83_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_83", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_82", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_83", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 60, 1]}, "float32", "conv1d_83_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_83_input"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_83", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_82", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_83", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 13}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": {"class_name": "ExponentialDecay", "config": {"initial_learning_rate": 0.1, "decay_steps": 10000, "decay_rate": 0.9, "staircase": false, "name": null}, "shared_object_id": 14}, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"name": "conv1d_83", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_83", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 60, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_41", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 15}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_82", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_82", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3456}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3456]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
^__call__
*_&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_83", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_83", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
!iter

"beta_1

#beta_2
	$decaymImJmKmLmMmNvOvPvQvRvSvT"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
%non_trainable_variables
trainable_variables
&layer_regularization_losses
'metrics
regularization_losses
(layer_metrics

)layers
U__call__
W_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
`serving_default"
signature_map
&:$@2conv1d_83/kernel
:@2conv1d_83/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
*non_trainable_variables
trainable_variables
+layer_regularization_losses
,metrics
regularization_losses
-layer_metrics

.layers
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
/non_trainable_variables
trainable_variables
0layer_regularization_losses
1metrics
regularization_losses
2layer_metrics

3layers
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
": 	? 2dense_82/kernel
: 2dense_82/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
4non_trainable_variables
trainable_variables
5layer_regularization_losses
6metrics
regularization_losses
7layer_metrics

8layers
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_83/kernel
:2dense_83/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
9non_trainable_variables
trainable_variables
:layer_regularization_losses
;metrics
regularization_losses
<layer_metrics

=layers
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
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
trackable_dict_wrapper
 "
trackable_list_wrapper
?
	@total
	Acount
B	variables
C	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}
?
	Dtotal
	Ecount
F
_fn_kwargs
G	variables
H	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 13}
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
+:)@2Adam/conv1d_83/kernel/m
!:@2Adam/conv1d_83/bias/m
':%	? 2Adam/dense_82/kernel/m
 : 2Adam/dense_82/bias/m
&:$ 2Adam/dense_83/kernel/m
 :2Adam/dense_83/bias/m
+:)@2Adam/conv1d_83/kernel/v
!:@2Adam/conv1d_83/bias/v
':%	? 2Adam/dense_82/kernel/v
 : 2Adam/dense_82/bias/v
&:$ 2Adam/dense_83/kernel/v
 :2Adam/dense_83/bias/v
?2?
/__inference_sequential_41_layer_call_fn_2941430
/__inference_sequential_41_layer_call_fn_2941617
/__inference_sequential_41_layer_call_fn_2941634
/__inference_sequential_41_layer_call_fn_2941537?
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
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941665
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941696
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941557
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941577?
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
?2?
"__inference__wrapped_model_2941344?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
conv1d_83_input?????????<
?2?
+__inference_conv1d_83_layer_call_fn_2941705?
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
F__inference_conv1d_83_layer_call_and_return_conditional_losses_2941721?
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
,__inference_flatten_41_layer_call_fn_2941726?
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
G__inference_flatten_41_layer_call_and_return_conditional_losses_2941732?
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
*__inference_dense_82_layer_call_fn_2941741?
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
E__inference_dense_82_layer_call_and_return_conditional_losses_2941752?
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
*__inference_dense_83_layer_call_fn_2941761?
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
E__inference_dense_83_layer_call_and_return_conditional_losses_2941771?
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
%__inference_signature_wrapper_2941600conv1d_83_input"?
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
 ?
"__inference__wrapped_model_2941344{<?9
2?/
-?*
conv1d_83_input?????????<
? "3?0
.
dense_83"?
dense_83??????????
F__inference_conv1d_83_layer_call_and_return_conditional_losses_2941721d3?0
)?&
$?!
inputs?????????<
? ")?&
?
0?????????6@
? ?
+__inference_conv1d_83_layer_call_fn_2941705W3?0
)?&
$?!
inputs?????????<
? "??????????6@?
E__inference_dense_82_layer_call_and_return_conditional_losses_2941752]0?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? ~
*__inference_dense_82_layer_call_fn_2941741P0?-
&?#
!?
inputs??????????
? "?????????? ?
E__inference_dense_83_layer_call_and_return_conditional_losses_2941771\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? }
*__inference_dense_83_layer_call_fn_2941761O/?,
%?"
 ?
inputs????????? 
? "???????????
G__inference_flatten_41_layer_call_and_return_conditional_losses_2941732]3?0
)?&
$?!
inputs?????????6@
? "&?#
?
0??????????
? ?
,__inference_flatten_41_layer_call_fn_2941726P3?0
)?&
$?!
inputs?????????6@
? "????????????
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941557uD?A
:?7
-?*
conv1d_83_input?????????<
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941577uD?A
:?7
-?*
conv1d_83_input?????????<
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941665l;?8
1?.
$?!
inputs?????????<
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_41_layer_call_and_return_conditional_losses_2941696l;?8
1?.
$?!
inputs?????????<
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_41_layer_call_fn_2941430hD?A
:?7
-?*
conv1d_83_input?????????<
p 

 
? "???????????
/__inference_sequential_41_layer_call_fn_2941537hD?A
:?7
-?*
conv1d_83_input?????????<
p

 
? "???????????
/__inference_sequential_41_layer_call_fn_2941617_;?8
1?.
$?!
inputs?????????<
p 

 
? "???????????
/__inference_sequential_41_layer_call_fn_2941634_;?8
1?.
$?!
inputs?????????<
p

 
? "???????????
%__inference_signature_wrapper_2941600?O?L
? 
E?B
@
conv1d_83_input-?*
conv1d_83_input?????????<"3?0
.
dense_83"?
dense_83?????????