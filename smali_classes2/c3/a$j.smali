.class final Lc3/a$j;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3/a;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/view/View;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lc3/a$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/a$j;

    invoke-direct {v0}, Lc3/a$j;-><init>()V

    sput-object v0, Lc3/a$j;->g:Lc3/a$j;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Double;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc3/a$c;

    invoke-virtual {p0}, Lc3/a$c;->b()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lc3/a$j;->a(Landroid/view/View;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
