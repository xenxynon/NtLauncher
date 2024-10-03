.class final La4/g$f;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/g;->o(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/android/launcher3/CellLayout;

.field final synthetic h:Lcom/android/launcher3/folder/BigFolderIcon;

.field final synthetic i:La4/g;

.field final synthetic j:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/folder/BigFolderIcon;La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p1, p0, La4/g$f;->g:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, La4/g$f;->h:Lcom/android/launcher3/folder/BigFolderIcon;

    iput-object p3, p0, La4/g$f;->i:La4/g;

    iput-object p4, p0, La4/g$f;->j:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/g$f;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, La4/g$f;->g:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, La4/g$f;->h:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, La4/g$f;->i:La4/g;

    iget-object p0, p0, La4/g$f;->j:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, La4/g;->d(La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
