.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appName:Ljava/lang/String;

.field private final badge:Landroid/graphics/Bitmap;

.field private final dotColor:I

.field private final dotPath:Landroid/graphics/Path;

.field private final icon:Landroid/graphics/Bitmap;

.field private final info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

.field private final key:Ljava/lang/String;

.field private final view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/BubbleInfo;Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/Path;Ljava/lang/String;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dotPath"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    iput-object p6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    iput-object p7, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "info.key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    iget v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    iget-object v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBadge()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleBarBubble(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->info:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->view:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", badge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->badge:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dotColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dotPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->dotPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->appName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
