.class final Ll6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/d;
.implements Lkotlin/coroutines/jvm/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq5/d<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;"
    }
.end annotation


# instance fields
.field private final g:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lq5/g;


# direct methods
.method public constructor <init>(Lq5/d;Lq5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-TT;>;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6/x;->g:Lq5/d;

    iput-object p2, p0, Ll6/x;->h:Lq5/g;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1

    iget-object p0, p0, Ll6/x;->g:Lq5/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ll6/x;->h:Lq5/g;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ll6/x;->g:Lq5/d;

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
