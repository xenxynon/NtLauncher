.class public final Lkotlinx/coroutines/flow/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/q;->a(Lkotlinx/coroutines/flow/e;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lkotlin/jvm/internal/a0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/a0;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/q$a;->g:Lkotlin/jvm/internal/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lkotlinx/coroutines/flow/q$a;->g:Lkotlin/jvm/internal/a0;

    iput-object p1, p2, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    new-instance p1, Ll6/a;

    invoke-direct {p1, p0}, Ll6/a;-><init>(Lkotlinx/coroutines/flow/f;)V

    throw p1
.end method
