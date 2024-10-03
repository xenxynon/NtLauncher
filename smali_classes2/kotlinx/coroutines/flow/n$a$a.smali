.class public final Lkotlinx/coroutines/flow/n$a$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/n$a;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1"
    f = "Errors.kt"
    l = {
        0x71,
        0x72
    }
    m = "collect"
.end annotation


# instance fields
.field synthetic g:Ljava/lang/Object;

.field h:I

.field final synthetic i:Lkotlinx/coroutines/flow/n$a;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/n$a;Lq5/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/n$a$a;->i:Lkotlinx/coroutines/flow/n$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/n$a$a;->g:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/n$a$a;->h:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/n$a$a;->i:Lkotlinx/coroutines/flow/n$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/n$a;->collect(Lkotlinx/coroutines/flow/f;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
