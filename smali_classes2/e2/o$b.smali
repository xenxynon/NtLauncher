.class final Le2/o$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/o;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedRecycleView"
    f = "SimulatedRecycleView.kt"
    l = {
        0x81,
        0x89
    }
    m = "setLayoutManager"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Le2/o;

.field n:I


# direct methods
.method constructor <init>(Le2/o;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/o;",
            "Lq5/d<",
            "-",
            "Le2/o$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/o$b;->m:Le2/o;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/o$b;->l:Ljava/lang/Object;

    iget p1, p0, Le2/o$b;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/o$b;->n:I

    iget-object p1, p0, Le2/o$b;->m:Le2/o;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Le2/o;->F(Le2/o;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
