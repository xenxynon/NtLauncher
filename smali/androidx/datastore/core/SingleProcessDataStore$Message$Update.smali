.class public final Landroidx/datastore/core/SingleProcessDataStore$Message$Update;
.super Landroidx/datastore/core/SingleProcessDataStore$Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/SingleProcessDataStore$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/SingleProcessDataStore$Message<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ack:Li6/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/w<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final callerContext:Lq5/g;

.field private final lastState:Landroidx/datastore/core/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/State<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transform:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "TT;",
            "Lq5/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly5/p;Li6/w;Landroidx/datastore/core/State;Lq5/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/p<",
            "-TT;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Li6/w<",
            "TT;>;",
            "Landroidx/datastore/core/State<",
            "TT;>;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/core/SingleProcessDataStore$Message;-><init>(Lkotlin/jvm/internal/i;)V

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->transform:Ly5/p;

    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->ack:Li6/w;

    iput-object p3, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->lastState:Landroidx/datastore/core/State;

    iput-object p4, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->callerContext:Lq5/g;

    return-void
.end method


# virtual methods
.method public final getAck()Li6/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li6/w<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->ack:Li6/w;

    return-object p0
.end method

.method public final getCallerContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->callerContext:Lq5/g;

    return-object p0
.end method

.method public getLastState()Landroidx/datastore/core/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/State<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->lastState:Landroidx/datastore/core/State;

    return-object p0
.end method

.method public final getTransform()Ly5/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/p<",
            "TT;",
            "Lq5/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$Message$Update;->transform:Ly5/p;

    return-object p0
.end method
