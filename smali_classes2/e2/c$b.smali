.class final Le2/c$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/c;->L(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardparser.parser.view.SimulatedBatteryContainerView"
    f = "SimulatedBatteryContainerView.kt"
    l = {
        0x8f,
        0x90
    }
    m = "setBatteryInfo"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Le2/c;

.field k:I


# direct methods
.method constructor <init>(Le2/c;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/c;",
            "Lq5/d<",
            "-",
            "Le2/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le2/c$b;->j:Le2/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le2/c$b;->i:Ljava/lang/Object;

    iget p1, p0, Le2/c$b;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le2/c$b;->k:I

    iget-object p1, p0, Le2/c$b;->j:Le2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Le2/c;->G(Le2/c;Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
