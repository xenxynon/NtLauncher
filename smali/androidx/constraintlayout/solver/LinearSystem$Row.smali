.class interface abstract Landroidx/constraintlayout/solver/LinearSystem$Row;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Row"
.end annotation


# virtual methods
.method public abstract addError(Landroidx/constraintlayout/solver/SolverVariable;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getKey()Landroidx/constraintlayout/solver/SolverVariable;
.end method

.method public abstract getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
.end method

.method public abstract initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract updateFromFinalVariable(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Z)V
.end method

.method public abstract updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
.end method

.method public abstract updateFromSystem(Landroidx/constraintlayout/solver/LinearSystem;)V
.end method
