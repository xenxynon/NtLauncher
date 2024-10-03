.class final Ll6/i$a$a$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll6/i$a$a;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1"
    f = "Merge.kt"
    l = {
        0x1e
    }
    m = "emit"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Ll6/i$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll6/i$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field l:I


# direct methods
.method constructor <init>(Ll6/i$a$a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll6/i$a$a<",
            "-TT;>;",
            "Lq5/d<",
            "-",
            "Ll6/i$a$a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ll6/i$a$a$b;->k:Ll6/i$a$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ll6/i$a$a$b;->j:Ljava/lang/Object;

    iget p1, p0, Ll6/i$a$a$b;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ll6/i$a$a$b;->l:I

    iget-object p1, p0, Ll6/i$a$a$b;->k:Ll6/i$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ll6/i$a$a;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
