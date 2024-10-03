.class final Lcom/nothing/launcher/card/u$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/card/u;-><init>(Landroid/content/Context;Lw1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/launcher3/util/MultiTranslateDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/card/u;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/card/u;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/card/u$b;->g:Lcom/nothing/launcher/card/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    iget-object p0, p0, Lcom/nothing/launcher/card/u$b;->g:Lcom/nothing/launcher/card/u;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/u$b;->invoke()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object p0

    return-object p0
.end method
