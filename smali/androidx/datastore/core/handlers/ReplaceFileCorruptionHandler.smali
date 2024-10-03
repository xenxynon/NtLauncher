.class public final Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/CorruptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/CorruptionHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final produceNewData:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Landroidx/datastore/core/CorruptionException;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Landroidx/datastore/core/CorruptionException;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "produceNewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->produceNewData:Ly5/l;

    return-void
.end method


# virtual methods
.method public handleCorruption(Landroidx/datastore/core/CorruptionException;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/CorruptionException;",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;->produceNewData:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
