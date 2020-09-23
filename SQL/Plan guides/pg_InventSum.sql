USE [PROD]
GO

/****** Object:  PlanGuide pg_INVENTSUM    Script Date: 23.09.2020 15:39:01 ******/
EXEC sp_create_plan_guide @name = N'[pg_INVENTSUM]', @stmt = N'SELECT SUM(T1.POSTEDQTY),SUM(T1.POSTEDVALUE),SUM(T1.PHYSICALVALUE),SUM(T1.DEDUCTED),SUM(T1.RECEIVED),SUM(T1.RESERVPHYSICAL),SUM(T1.RESERVORDERED),SUM(T1.REGISTERED),SUM(T1.PICKED),SUM(T1.ONORDER),SUM(T1.ORDERED),SUM(T1.ARRIVED),SUM(T1.QUOTATIONRECEIPT),SUM(T1.QUOTATIONISSUE),SUM(T1.AVAILPHYSICAL),SUM(T1.AVAILORDERED),SUM(T1.PHYSICALINVENT),SUM(T1.POSTEDVALUESECCUR_RU),SUM(T1.PHYSICALVALUESECCUR_RU) FROM INVENTSUM T1 WHERE (((T1.PARTITION=@P1) AND (T1.DATAAREAID=@P2)) AND ((T1.ITEMID=@P3) AND (T1.CLOSED=@P4))) AND EXISTS (SELECT ''x'' FROM INVENTDIM T2 WHERE (((T2.PARTITION=@P5) AND (T2.DATAAREAID=@P6)) AND (((T2.INVENTDIMID=T1.INVENTDIMID) AND (T2.INVENTSITEID=@P7)) AND (T2.INVENTLOCATIONID=@P8)))) OPTION(LOOP JOIN,FORCE ORDER)', @type = N'SQL', @module_or_batch = N'SELECT SUM(T1.POSTEDQTY),SUM(T1.POSTEDVALUE),SUM(T1.PHYSICALVALUE),SUM(T1.DEDUCTED),SUM(T1.RECEIVED),SUM(T1.RESERVPHYSICAL),SUM(T1.RESERVORDERED),SUM(T1.REGISTERED),SUM(T1.PICKED),SUM(T1.ONORDER),SUM(T1.ORDERED),SUM(T1.ARRIVED),SUM(T1.QUOTATIONRECEIPT),SUM(T1.QUOTATIONISSUE),SUM(T1.AVAILPHYSICAL),SUM(T1.AVAILORDERED),SUM(T1.PHYSICALINVENT),SUM(T1.POSTEDVALUESECCUR_RU),SUM(T1.PHYSICALVALUESECCUR_RU) FROM INVENTSUM T1 WHERE (((T1.PARTITION=@P1) AND (T1.DATAAREAID=@P2)) AND ((T1.ITEMID=@P3) AND (T1.CLOSED=@P4))) AND EXISTS (SELECT ''x'' FROM INVENTDIM T2 WHERE (((T2.PARTITION=@P5) AND (T2.DATAAREAID=@P6)) AND (((T2.INVENTDIMID=T1.INVENTDIMID) AND (T2.INVENTSITEID=@P7)) AND (T2.INVENTLOCATIONID=@P8))))', @params = N'@P1 bigint,@P2 nvarchar(5),@P3 nvarchar(21),@P4 int,@P5 bigint,@P6 nvarchar(5),@P7 nvarchar(11),@P8 nvarchar(61)', @hints = N'<ShowPlanXML xmlns="http://schemas.microsoft.com/sqlserver/2004/07/showplan" Version="1.518" Build="13.0.5233.0">
  <BatchSequence>
    <Batch>
      <Statements>
        <StmtCursor StatementText="(@P1 bigint,@P2 nvarchar(5),@P3 nvarchar(21),@P4 int,@P5 bigint,@P6 nvarchar(5),@P7 nvarchar(11),@P8 nvarchar(61))SELECT SUM(T1.POSTEDQTY),SUM(T1.POSTEDVALUE),SUM(T1.PHYSICALVALUE),SUM(T1.DEDUCTED),SUM(T1.RECEIVED),SUM(T1.RESERVPHYSICAL),SUM(T1.RESERVORDERED),SUM(T1.REGISTERED),SUM(T1.PICKED),SUM(T1.ONORDER),SUM(T1.ORDERED),SUM(T1.ARRIVED),SUM(T1.QUOTATIONRECEIPT),SUM(T1.QUOTATIONISSUE),SUM(T1.AVAILPHYSICAL),SUM(T1.AVAILORDERED),SUM(T1.PHYSICALINVENT),SUM(T1.POSTEDVALUESECCUR_RU),SUM(T1.PHYSICALVALUESECCUR_RU) FROM INVENTSUM T1 WHERE (((T1.PARTITION=@P1) AND (T1.DATAAREAID=@P2)) AND ((T1.ITEMID=@P3) AND (T1.CLOSED=@P4))) AND EXISTS (SELECT ''x'' FROM INVENTDIM T2 WHERE (((T2.PARTITION=@P5) AND (T2.DATAAREAID=@P6)) AND (((T2.INVENTDIMID=T1.INVENTDIMID) AND (T2.INVENTSITEID=@P7)) AND (T2.INVENTLOCATIONID=@P8)))) OPTION(LOOP JOIN,FORCE ORDER)" StatementId="1" StatementCompId="1" StatementType="DECLARE CURSOR" RetrievedFromCache="true">
          <CursorPlan CursorName="" CursorActualType="FastForward" CursorRequestedType="FastForward" CursorConcurrency="Read Only" ForwardOnly="true">
            <Operation OperationType="FetchQuery">
              <QueryPlan NonParallelPlanReason="MaxDOPSetToOne" CachedPlanSize="136" CompileTime="8" CompileCPU="8" CompileMemory="1872">
                <MemoryGrantInfo SerialRequiredMemory="0" SerialDesiredMemory="0" />
                <OptimizerHardwareDependentProperties EstimatedAvailableMemoryGrant="396800" EstimatedPagesCached="1587200" EstimatedAvailableDegreeOfParallelism="1" MaxCompileMemory="167693024" />
                <TraceFlags IsCompileTime="1">
                  <TraceFlag Value="1117" Scope="Global" />
                  <TraceFlag Value="1118" Scope="Global" />
                  <TraceFlag Value="2371" Scope="Global" />
                  <TraceFlag Value="3226" Scope="Global" />
                  <TraceFlag Value="4199" Scope="Global" />
                  <TraceFlag Value="8048" Scope="Global" />
                </TraceFlags>
                <RelOp NodeId="0" PhysicalOp="Compute Scalar" LogicalOp="Compute Scalar" EstimateRows="1" EstimateIO="0" EstimateCPU="0" AvgRowSize="332" EstimatedTotalSubtreeCost="0.386892" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
                  <OutputList>
                    <ColumnReference Column="Expr1003" />
                    <ColumnReference Column="Expr1004" />
                    <ColumnReference Column="Expr1005" />
                    <ColumnReference Column="Expr1006" />
                    <ColumnReference Column="Expr1007" />
                    <ColumnReference Column="Expr1008" />
                    <ColumnReference Column="Expr1009" />
                    <ColumnReference Column="Expr1010" />
                    <ColumnReference Column="Expr1011" />
                    <ColumnReference Column="Expr1012" />
                    <ColumnReference Column="Expr1013" />
                    <ColumnReference Column="Expr1014" />
                    <ColumnReference Column="Expr1015" />
                    <ColumnReference Column="Expr1016" />
                    <ColumnReference Column="Expr1017" />
                    <ColumnReference Column="Expr1018" />
                    <ColumnReference Column="Expr1019" />
                    <ColumnReference Column="Expr1020" />
                    <ColumnReference Column="Expr1021" />
                  </OutputList>
                  <ComputeScalar>
                    <DefinedValues>
                      <DefinedValue>
                        <ColumnReference Column="Expr1003" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1138] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1138" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1004" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1139] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1139" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1005" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1140] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1140" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1006" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1141] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1141" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1007" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1142] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1142" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1008" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1143] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1143" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1009" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1144] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1144" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1010" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1145] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1145" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1011" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1146] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1146" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1012" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1147] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1147" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1013" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1148] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1148" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1014" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1149] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1149" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1015" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1150] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1150" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1016" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1151] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1151" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1017" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1152] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1152" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1018" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1153] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1153" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1019" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1154] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1154" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1020" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1155] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1155" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Column="Expr1021" />
                        <ScalarOperator ScalarString="CASE WHEN [Expr1137]=(0) THEN NULL ELSE [Expr1156] END">
                          <IF>
                            <Condition>
                              <ScalarOperator>
                                <Compare CompareOp="EQ">
                                  <ScalarOperator>
                                    <Identifier>
                                      <ColumnReference Column="Expr1137" />
                                    </Identifier>
                                  </ScalarOperator>
                                  <ScalarOperator>
                                    <Const ConstValue="(0)" />
                                  </ScalarOperator>
                                </Compare>
                              </ScalarOperator>
                            </Condition>
                            <Then>
                              <ScalarOperator>
                                <Const ConstValue="NULL" />
                              </ScalarOperator>
                            </Then>
                            <Else>
                              <ScalarOperator>
                                <Identifier>
                                  <ColumnReference Column="Expr1156" />
                                </Identifier>
                              </ScalarOperator>
                            </Else>
                          </IF>
                        </ScalarOperator>
                      </DefinedValue>
                    </DefinedValues>
                    <RelOp NodeId="1" PhysicalOp="Stream Aggregate" LogicalOp="Aggregate" EstimateRows="1" EstimateIO="0" EstimateCPU="6.97358e-005" AvgRowSize="332" EstimatedTotalSubtreeCost="0.386892" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
                      <OutputList>
                        <ColumnReference Column="Expr1137" />
                        <ColumnReference Column="Expr1138" />
                        <ColumnReference Column="Expr1139" />
                        <ColumnReference Column="Expr1140" />
                        <ColumnReference Column="Expr1141" />
                        <ColumnReference Column="Expr1142" />
                        <ColumnReference Column="Expr1143" />
                        <ColumnReference Column="Expr1144" />
                        <ColumnReference Column="Expr1145" />
                        <ColumnReference Column="Expr1146" />
                        <ColumnReference Column="Expr1147" />
                        <ColumnReference Column="Expr1148" />
                        <ColumnReference Column="Expr1149" />
                        <ColumnReference Column="Expr1150" />
                        <ColumnReference Column="Expr1151" />
                        <ColumnReference Column="Expr1152" />
                        <ColumnReference Column="Expr1153" />
                        <ColumnReference Column="Expr1154" />
                        <ColumnReference Column="Expr1155" />
                        <ColumnReference Column="Expr1156" />
                      </OutputList>
                      <StreamAggregate>
                        <DefinedValues>
                          <DefinedValue>
                            <ColumnReference Column="Expr1137" />
                            <ScalarOperator ScalarString="Count(*)">
                              <Aggregate AggType="countstar" Distinct="0" />
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1138" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[POSTEDQTY] as [T1].[POSTEDQTY])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDQTY" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1139" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[POSTEDVALUE] as [T1].[POSTEDVALUE])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUE" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1140" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[PHYSICALVALUE] as [T1].[PHYSICALVALUE])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUE" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1141" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[DEDUCTED] as [T1].[DEDUCTED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="DEDUCTED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1142" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[RECEIVED] as [T1].[RECEIVED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RECEIVED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1143" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[RESERVPHYSICAL] as [T1].[RESERVPHYSICAL])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVPHYSICAL" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1144" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[RESERVORDERED] as [T1].[RESERVORDERED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVORDERED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1145" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[REGISTERED] as [T1].[REGISTERED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="REGISTERED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1146" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[PICKED] as [T1].[PICKED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PICKED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1147" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[ONORDER] as [T1].[ONORDER])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ONORDER" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1148" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[ORDERED] as [T1].[ORDERED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ORDERED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1149" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[ARRIVED] as [T1].[ARRIVED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ARRIVED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1150" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[QUOTATIONRECEIPT] as [T1].[QUOTATIONRECEIPT])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONRECEIPT" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1151" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[QUOTATIONISSUE] as [T1].[QUOTATIONISSUE])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONISSUE" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1152" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[AVAILPHYSICAL] as [T1].[AVAILPHYSICAL])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILPHYSICAL" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1153" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[AVAILORDERED] as [T1].[AVAILORDERED])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILORDERED" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1154" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[PHYSICALINVENT] as [T1].[PHYSICALINVENT])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALINVENT" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1155" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[POSTEDVALUESECCUR_RU] as [T1].[POSTEDVALUESECCUR_RU])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUESECCUR_RU" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                          <DefinedValue>
                            <ColumnReference Column="Expr1156" />
                            <ScalarOperator ScalarString="SUM([PROD].[dbo].[INVENTSUM].[PHYSICALVALUESECCUR_RU] as [T1].[PHYSICALVALUESECCUR_RU])">
                              <Aggregate Distinct="0" AggType="SUM">
                                <ScalarOperator>
                                  <Identifier>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUESECCUR_RU" />
                                  </Identifier>
                                </ScalarOperator>
                              </Aggregate>
                            </ScalarOperator>
                          </DefinedValue>
                        </DefinedValues>
                        <RelOp NodeId="3" PhysicalOp="Nested Loops" LogicalOp="Inner Join" EstimateRows="115.393" EstimateIO="0" EstimateCPU="0.000482343" AvgRowSize="332" EstimatedTotalSubtreeCost="0.386822" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
                          <OutputList>
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDQTY" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUE" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="DEDUCTED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RECEIVED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVPHYSICAL" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVORDERED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ONORDER" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ORDERED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONISSUE" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONRECEIPT" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="REGISTERED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PICKED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILORDERED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILPHYSICAL" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUE" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ARRIVED" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALINVENT" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUESECCUR_RU" />
                            <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUESECCUR_RU" />
                          </OutputList>
                          <NestedLoops Optimized="0" WithUnorderedPrefetch="1">
                            <OuterReferences>
                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="INVENTDIMID" />
                              <ColumnReference Column="Expr1136" />
                            </OuterReferences>
                            <RelOp NodeId="5" PhysicalOp="Clustered Index Seek" LogicalOp="Clustered Index Seek" EstimateRows="115.393" EstimatedRowsRead="115.393" EstimateIO="0.0102723" EstimateCPU="0.000283932" AvgRowSize="363" EstimatedTotalSubtreeCost="0.0105562" TableCardinality="9.94933e+006" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
                              <OutputList>
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDQTY" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUE" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="DEDUCTED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RECEIVED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVPHYSICAL" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVORDERED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ONORDER" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ORDERED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONISSUE" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONRECEIPT" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="INVENTDIMID" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="REGISTERED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PICKED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILORDERED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILPHYSICAL" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUE" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ARRIVED" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALINVENT" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUESECCUR_RU" />
                                <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUESECCUR_RU" />
                              </OutputList>
                              <IndexScan Ordered="1" ScanDirection="FORWARD" ForcedIndex="0" ForceSeek="0" ForceScan="0" NoExpandHint="0" Storage="RowStore">
                                <DefinedValues>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDQTY" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUE" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="DEDUCTED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RECEIVED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVPHYSICAL" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="RESERVORDERED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ONORDER" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ORDERED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONISSUE" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="QUOTATIONRECEIPT" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="INVENTDIMID" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="REGISTERED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PICKED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILORDERED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="AVAILPHYSICAL" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUE" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ARRIVED" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALINVENT" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="POSTEDVALUESECCUR_RU" />
                                  </DefinedValue>
                                  <DefinedValue>
                                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PHYSICALVALUESECCUR_RU" />
                                  </DefinedValue>
                                </DefinedValues>
                                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Index="[I_174ITEMDIMIDX]" Alias="[T1]" IndexKind="Clustered" Storage="RowStore" />
                                <SeekPredicates>
                                  <SeekPredicateNew>
                                    <SeekKeys>
                                      <Prefix ScanType="EQ">
                                        <RangeColumns>
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="PARTITION" />
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="DATAAREAID" />
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="ITEMID" />
                                        </RangeColumns>
                                        <RangeExpressions>
                                          <ScalarOperator ScalarString="[@P1]">
                                            <Identifier>
                                              <ColumnReference Column="@P1" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator ScalarString="[@P2]">
                                            <Identifier>
                                              <ColumnReference Column="@P2" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator ScalarString="[@P3]">
                                            <Identifier>
                                              <ColumnReference Column="@P3" />
                                            </Identifier>
                                          </ScalarOperator>
                                        </RangeExpressions>
                                      </Prefix>
                                    </SeekKeys>
                                  </SeekPredicateNew>
                                </SeekPredicates>
                                <Predicate>
                                  <ScalarOperator ScalarString="[PROD].[dbo].[INVENTSUM].[CLOSED] as [T1].[CLOSED]=[@P4]">
                                    <Compare CompareOp="EQ">
                                      <ScalarOperator>
                                        <Identifier>
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="CLOSED" />
                                        </Identifier>
                                      </ScalarOperator>
                                      <ScalarOperator>
                                        <Identifier>
                                          <ColumnReference Column="@P4" />
                                        </Identifier>
                                      </ScalarOperator>
                                    </Compare>
                                  </ScalarOperator>
                                </Predicate>
                              </IndexScan>
                            </RelOp>
                            <RelOp NodeId="6" PhysicalOp="Clustered Index Seek" LogicalOp="Clustered Index Seek" EstimateRows="1" EstimatedRowsRead="1" EstimateIO="0.003125" EstimateCPU="0.0001581" AvgRowSize="33" EstimatedTotalSubtreeCost="0.375626" TableCardinality="1.36688e+007" Parallel="0" EstimateRebinds="114.393" EstimateRewinds="0" EstimatedExecutionMode="Row">
                              <OutputList />
                              <IndexScan Ordered="1" ScanDirection="FORWARD" ForcedIndex="0" ForceSeek="0" ForceScan="0" NoExpandHint="0" Storage="RowStore">
                                <DefinedValues />
                                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Index="[I_698DIMIDIDX]" Alias="[T2]" IndexKind="Clustered" Storage="RowStore" />
                                <SeekPredicates>
                                  <SeekPredicateNew>
                                    <SeekKeys>
                                      <Prefix ScanType="EQ">
                                        <RangeColumns>
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Alias="[T2]" Column="PARTITION" />
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Alias="[T2]" Column="DATAAREAID" />
                                          <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Alias="[T2]" Column="INVENTDIMID" />
                                        </RangeColumns>
                                        <RangeExpressions>
                                          <ScalarOperator ScalarString="[@P5]">
                                            <Identifier>
                                              <ColumnReference Column="@P5" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator ScalarString="[@P6]">
                                            <Identifier>
                                              <ColumnReference Column="@P6" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator ScalarString="[PROD].[dbo].[INVENTSUM].[INVENTDIMID] as [T1].[INVENTDIMID]">
                                            <Identifier>
                                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUM]" Alias="[T1]" Column="INVENTDIMID" />
                                            </Identifier>
                                          </ScalarOperator>
                                        </RangeExpressions>
                                      </Prefix>
                                    </SeekKeys>
                                  </SeekPredicateNew>
                                </SeekPredicates>
                                <Predicate>
                                  <ScalarOperator ScalarString="[PROD].[dbo].[INVENTDIM].[INVENTSITEID] as [T2].[INVENTSITEID]=[@P7] AND [PROD].[dbo].[INVENTDIM].[INVENTLOCATIONID] as [T2].[INVENTLOCATIONID]=[@P8]">
                                    <Logical Operation="AND">
                                      <ScalarOperator>
                                        <Compare CompareOp="EQ">
                                          <ScalarOperator>
                                            <Identifier>
                                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Alias="[T2]" Column="INVENTSITEID" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator>
                                            <Identifier>
                                              <ColumnReference Column="@P7" />
                                            </Identifier>
                                          </ScalarOperator>
                                        </Compare>
                                      </ScalarOperator>
                                      <ScalarOperator>
                                        <Compare CompareOp="EQ">
                                          <ScalarOperator>
                                            <Identifier>
                                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTDIM]" Alias="[T2]" Column="INVENTLOCATIONID" />
                                            </Identifier>
                                          </ScalarOperator>
                                          <ScalarOperator>
                                            <Identifier>
                                              <ColumnReference Column="@P8" />
                                            </Identifier>
                                          </ScalarOperator>
                                        </Compare>
                                      </ScalarOperator>
                                    </Logical>
                                  </ScalarOperator>
                                </Predicate>
                              </IndexScan>
                            </RelOp>
                          </NestedLoops>
                        </RelOp>
                      </StreamAggregate>
                    </RelOp>
                  </ComputeScalar>
                </RelOp>
                <ParameterList>
                  <ColumnReference Column="@P8" ParameterDataType="nvarchar(61)" ParameterCompiledValue="N''0182-ням''" />
                  <ColumnReference Column="@P7" ParameterDataType="nvarchar(11)" ParameterCompiledValue="N''ням''" />
                  <ColumnReference Column="@P6" ParameterDataType="nvarchar(5)" ParameterCompiledValue="N''fre''" />
                  <ColumnReference Column="@P5" ParameterDataType="bigint" ParameterCompiledValue="(5637144576)" />
                  <ColumnReference Column="@P4" ParameterDataType="int" ParameterCompiledValue="(0)" />
                  <ColumnReference Column="@P3" ParameterDataType="nvarchar(21)" ParameterCompiledValue="N''503317''" />
                  <ColumnReference Column="@P2" ParameterDataType="nvarchar(5)" ParameterCompiledValue="N''fre''" />
                  <ColumnReference Column="@P1" ParameterDataType="bigint" ParameterCompiledValue="(5637144576)" />
                </ParameterList>
              </QueryPlan>
            </Operation>
          </CursorPlan>
        </StmtCursor>
      </Statements>
    </Batch>
  </BatchSequence>
</ShowPlanXML>'
GO


