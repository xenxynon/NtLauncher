.class public final Lcom/android/launcher3/folder/BaseFolderIcon$Companion$DOT_SCALE_PROPERTY$1;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/folder/BaseFolderIcon;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dotScale"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/folder/BaseFolderIcon;)Ljava/lang/Float;
    .locals 0

    const-string p0, "folderIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->access$getDotScale$p(Lcom/android/launcher3/folder/BaseFolderIcon;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion$DOT_SCALE_PROPERTY$1;->get(Lcom/android/launcher3/folder/BaseFolderIcon;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/launcher3/folder/BaseFolderIcon;F)V
    .locals 0

    const-string p0, "folderIcon"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->access$setDotScale$p(Lcom/android/launcher3/folder/BaseFolderIcon;F)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon$Companion$DOT_SCALE_PROPERTY$1;->set(Lcom/android/launcher3/folder/BaseFolderIcon;F)V

    return-void
.end method
