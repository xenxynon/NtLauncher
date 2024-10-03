.class public final Lt4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

.field private final b:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final c:Lcom/android/launcher3/model/BgDataModel;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final f:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "+",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;[I)V"
        }
    .end annotation

    const-string v0, "previewIdp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgDataModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenOrders"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iput-object p2, p0, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p3, p0, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    iput-object p4, p0, Lt4/g;->d:Ljava/util/Map;

    iput-object p5, p0, Lt4/g;->e:Ljava/util/Map;

    iput-object p6, p0, Lt4/g;->f:[I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/launcher3/model/BgDataModel;
    .locals 0

    iget-object p0, p0, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lt4/g;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final c()Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;
    .locals 0

    iget-object p0, p0, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    return-object p0
.end method

.method public final d()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public final e()[I
    .locals 0

    iget-object p0, p0, Lt4/g;->f:[I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt4/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt4/g;

    iget-object v1, p0, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v3, p1, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v3, p1, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p1, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lt4/g;->d:Ljava/util/Map;

    iget-object v3, p1, Lt4/g;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lt4/g;->e:Ljava/util/Map;

    iget-object v3, p1, Lt4/g;->e:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lt4/g;->f:[I

    iget-object p1, p1, Lt4/g;->f:[I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lt4/g;->d:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4/g;->d:Ljava/util/Map;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lt4/g;->e:Ljava/util/Map;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lt4/g;->f:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkspacePreviewData(previewContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4/g;->a:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewIdp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4/g;->b:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bgDataModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4/g;->c:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetsProvidersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4/g;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardsProvidersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt4/g;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenOrders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt4/g;->f:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
