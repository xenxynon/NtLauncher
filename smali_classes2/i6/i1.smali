.class public final Li6/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Li6/f1;
    .locals 2

    new-instance v0, Li6/g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Li6/g;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
