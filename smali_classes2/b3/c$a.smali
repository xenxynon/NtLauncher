.class final Lb3/c$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb3/c;->a(Lcom/android/launcher3/model/BgDataModel;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/android/launcher3/model/BgDataModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 0

    iput-object p1, p0, Lb3/c$a;->g:Lcom/android/launcher3/model/BgDataModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lb3/c$a;->g:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p1, p0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lb3/c$a;->a(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
