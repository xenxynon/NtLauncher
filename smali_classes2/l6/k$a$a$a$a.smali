.class final Ll6/k$a$a$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/k$a$a$a;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1"
    f = "Combine.kt"
    l = {
        0x23,
        0x24
    }
    m = "emit"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field final synthetic h:Ll6/k$a$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/k$a$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>(Ll6/k$a$a$a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll6/k$a$a$a<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ll6/k$a$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/k$a$a$a$a;->h:Ll6/k$a$a$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ll6/k$a$a$a$a;->g:Ljava/lang/Object;

    iget p1, p0, Ll6/k$a$a$a$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ll6/k$a$a$a$a;->i:I

    iget-object p1, p0, Ll6/k$a$a$a$a;->h:Ll6/k$a$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ll6/k$a$a$a;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
