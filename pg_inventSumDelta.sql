USE [PROD]
GO

/****** Object:  PlanGuide pg_INVENTSUMDELTA    Script Date: 23.09.2020 15:37:16 ******/
EXEC sp_create_plan_guide @name = N'[pg_INVENTSUMDELTA]', @stmt = N'DELETE FROM INVENTSUMDELTA WHERE (((PARTITION=@P1) AND (DATAAREAID=@P2)) AND (TTSID=@P3))', @type = N'SQL', @module_or_batch = N'DELETE FROM INVENTSUMDELTA WHERE (((PARTITION=@P1) AND (DATAAREAID=@P2)) AND (TTSID=@P3))', @params = N'@P1 bigint,@P2 nvarchar(5),@P3 bigint', @hints = N'<ShowPlanXML xmlns="http://schemas.microsoft.com/sqlserver/2004/07/showplan" Version="1.518" Build="13.0.5233.0">
  <BatchSequence>
    <Batch>
      <Statements>
        <StmtSimple StatementText="(@P1 bigint,@P2 nvarchar(5),@P3 bigint)DELETE FROM INVENTSUMDELTA WHERE (((PARTITION=@P1) AND (DATAAREAID=@P2)) AND (TTSID=@P3))" StatementId="1" StatementCompId="1" StatementType="DELETE" StatementSqlHandle="0x0900DB1CE6BAC082EE1FB68C1DBDD1AB990B0000000000000000000000000000000000000000000000000000" DatabaseContextSettingsId="2" ParentObjectId="0" StatementParameterizationType="1" RetrievedFromCache="true" StatementSubTreeCost="101.246" StatementEstRows="9372" SecurityPolicyApplied="false" StatementOptmLevel="TRIVIAL" QueryHash="0x6A8B01448628AB63" QueryPlanHash="0x7A16A4F7335D7FDA" CardinalityEstimationModelVersion="130">
          <StatementSetOptions QUOTED_IDENTIFIER="true" ARITHABORT="false" CONCAT_NULL_YIELDS_NULL="true" ANSI_NULLS="true" ANSI_PADDING="true" ANSI_WARNINGS="true" NUMERIC_ROUNDABORT="false" />
          <QueryPlan NonParallelPlanReason="MaxDOPSetToOne" CachedPlanSize="48" CompileTime="1" CompileCPU="1" CompileMemory="248">
            <MemoryGrantInfo SerialRequiredMemory="0" SerialDesiredMemory="0" />
            <OptimizerHardwareDependentProperties EstimatedAvailableMemoryGrant="396800" EstimatedPagesCached="1587200" EstimatedAvailableDegreeOfParallelism="1" MaxCompileMemory="164957088" />
            <OptimizerStatsUsage>
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50.07" ModificationCount="2432" SamplingPercent="22.5383" Statistics="[I_2397TTSAGGRIDX]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:52:55.51" ModificationCount="34" SamplingPercent="21.9194" Statistics="[I_2397TTSITEMDIMIDX]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50.14" ModificationCount="2423" SamplingPercent="22.5388" Statistics="[_WA_Sys_0000002A_221D1E1F]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50.05" ModificationCount="2433" SamplingPercent="24.1965" Statistics="[I_2397RECID]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50" ModificationCount="2437" SamplingPercent="22.5433" Statistics="[I_2397TTSDIMIDX]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50.02" ModificationCount="2437" SamplingPercent="22.5421" Statistics="[I_2397AGGREGATIONIDX]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
              <StatisticsInfo LastUpdate="2019-07-01T16:49:50.15" ModificationCount="2422" SamplingPercent="22.5376" Statistics="[_WA_Sys_00000016_221D1E1F]" Table="[INVENTSUMDELTA]" Schema="[dbo]" Database="[PROD]" />
            </OptimizerStatsUsage>
            <TraceFlags IsCompileTime="1">
              <TraceFlag Value="1117" Scope="Global" />
              <TraceFlag Value="1118" Scope="Global" />
              <TraceFlag Value="2371" Scope="Global" />
              <TraceFlag Value="3226" Scope="Global" />
              <TraceFlag Value="4138" Scope="Global" />
              <TraceFlag Value="4199" Scope="Global" />
              <TraceFlag Value="8048" Scope="Global" />
            </TraceFlags>
            <RelOp NodeId="0" PhysicalOp="Clustered Index Delete" LogicalOp="Delete" EstimateRows="9372" EstimateIO="100.114" EstimateCPU="0.04686" AvgRowSize="9" EstimatedTotalSubtreeCost="101.246" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
              <OutputList />
              <Update WithUnorderedPrefetch="1" DMLRequestSort="0">
                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397TTSITEMDIMIDX]" IndexKind="Clustered" Storage="RowStore" />
                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397TTSDIMIDX]" IndexKind="NonClustered" Storage="RowStore" />
                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397AGGREGATIONIDX]" IndexKind="NonClustered" Storage="RowStore" />
                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397RECID]" IndexKind="NonClustered" Storage="RowStore" />
                <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397TTSAGGRIDX]" IndexKind="NonClustered" Storage="RowStore" />
                <RelOp NodeId="2" PhysicalOp="Index Seek" LogicalOp="Index Seek" EstimateRows="9372" EstimatedRowsRead="9372" EstimateIO="1.07424" EstimateCPU="0.0104662" AvgRowSize="89" EstimatedTotalSubtreeCost="1.0847" TableCardinality="18744" Parallel="0" EstimateRebinds="0" EstimateRewinds="0" EstimatedExecutionMode="Row">
                  <OutputList>
                    <ColumnReference Column="Uniq1001" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="ITEMID" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="INVENTDIMID" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="TTSID" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="ISAGGREGATED" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="AGGREGATIONCOUNTER" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="DATAAREAID" />
                    <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="PARTITION" />
                  </OutputList>
                  <IndexScan Ordered="1" ScanDirection="FORWARD" ForcedIndex="0" ForceSeek="0" ForceScan="0" NoExpandHint="0" Storage="RowStore">
                    <DefinedValues>
                      <DefinedValue>
                        <ColumnReference Column="Uniq1001" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="ITEMID" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="INVENTDIMID" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="TTSID" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="ISAGGREGATED" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="AGGREGATIONCOUNTER" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="DATAAREAID" />
                      </DefinedValue>
                      <DefinedValue>
                        <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="PARTITION" />
                      </DefinedValue>
                    </DefinedValues>
                    <Object Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Index="[I_2397TTSDIMIDX]" IndexKind="NonClustered" Storage="RowStore" />
                    <SeekPredicates>
                      <SeekPredicateNew>
                        <SeekKeys>
                          <Prefix ScanType="EQ">
                            <RangeColumns>
                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="PARTITION" />
                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="DATAAREAID" />
                              <ColumnReference Database="[PROD]" Schema="[dbo]" Table="[INVENTSUMDELTA]" Column="TTSID" />
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
                  </IndexScan>
                </RelOp>
              </Update>
            </RelOp>
            <ParameterList>
              <ColumnReference Column="@P3" ParameterDataType="bigint" ParameterCompiledValue="(7992972900)" />
              <ColumnReference Column="@P2" ParameterDataType="nvarchar(5)" ParameterCompiledValue="N''fre''" />
              <ColumnReference Column="@P1" ParameterDataType="bigint" ParameterCompiledValue="(5637144576)" />
            </ParameterList>
          </QueryPlan>
        </StmtSimple>
      </Statements>
    </Batch>
  </BatchSequence>
</ShowPlanXML>'
GO


