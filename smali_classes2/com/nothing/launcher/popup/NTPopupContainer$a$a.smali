.class final Lcom/nothing/launcher/popup/NTPopupContainer$a$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/popup/NTPopupContainer$a;->c(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/nothing/launcher/popup/NTPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/android/launcher3/Launcher;

.field final synthetic h:Lcom/android/launcher3/model/data/ItemInfo;

.field final synthetic i:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->h:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->i:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->g:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->h:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->i:Landroid/view/View;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut$Factory;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a$a;->a(Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method
