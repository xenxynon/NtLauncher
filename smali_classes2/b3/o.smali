.class public final Lb3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lv3/d;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv3/d;->d()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
