.class public final Lb3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/launcher3/model/data/FolderInfo;I)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    :cond_3
    :goto_0
    if-ge p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
