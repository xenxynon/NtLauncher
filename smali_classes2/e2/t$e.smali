.class final Le2/t$e;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/t;->B(Le2/t;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedView"
    f = "SimulatedView.kt"
    l = {
        0x39,
        0x3d
    }
    m = "simulate$suspendImpl"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field synthetic k:Ljava/lang/Object;

.field final synthetic l:Le2/t;

.field m:I


# direct methods
.method constructor <init>(Le2/t;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/t;",
            "Lq5/d<",
            "-",
            "Le2/t$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/t$e;->l:Le2/t;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le2/t$e;->k:Ljava/lang/Object;

    iget p1, p0, Le2/t$e;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/t$e;->m:I

    iget-object v0, p0, Le2/t$e;->l:Le2/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Le2/t;->B(Le2/t;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
