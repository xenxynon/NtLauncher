.class public final Lcom/nothing/launcher/card/s;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/card/s$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/nothing/launcher/card/s$a;


# instance fields
.field private final a:I

.field private final b:Landroid/content/ComponentName;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/card/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/s$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/card/s;->e:Lcom/nothing/launcher/card/s$a;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 1

    const-string v0, "providerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput p1, p0, Lcom/nothing/launcher/card/s;->a:I

    iput-object p2, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " providerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/launcher/card/s;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nothing/launcher/card/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nothing/launcher/card/s;

    iget v1, p0, Lcom/nothing/launcher/card/s;->a:I

    iget v3, p1, Lcom/nothing/launcher/card/s;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getWidgetId()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/s;->a:I

    return p0
.end method

.method public final h()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/nothing/launcher/card/s;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/s;->c:I

    return p0
.end method

.method public final isWidgetIdAllocated()Z
    .locals 1

    iget p0, p0, Lcom/nothing/launcher/card/s;->c:I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Lcom/android/launcher3/Launcher;Lcom/nothing/cardhost/e;)V
    .locals 2

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/card/s;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lu2/b;->h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/launcher/card/s;->d:Z

    :cond_0
    instance-of p1, p2, Lcom/nothing/launcher/widget/h;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/nothing/launcher/widget/h;

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {p2, p1, p0}, Lcom/nothing/launcher/widget/h;->applyDisplaySpan(II)V

    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/card/s;->c:I

    return-void
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    iget v0, p0, Lcom/nothing/launcher/card/s;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    iget-object v0, p0, Lcom/nothing/launcher/card/s;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    iget p0, p0, Lcom/nothing/launcher/card/s;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "restored"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    return-void
.end method
