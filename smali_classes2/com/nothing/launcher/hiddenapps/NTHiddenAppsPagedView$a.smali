.class public final Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$a;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "contentAlpha"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const-string p0, "appsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;F)V"
        }
    .end annotation

    const-string p0, "appsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->setContentAlpha(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$a;->a(Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView$a;->b(Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;F)V

    return-void
.end method
