.class public final synthetic Lcom/android/launcher3/touch/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Launcher;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/l;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/l;->h:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/touch/l;->i:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/touch/l;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/touch/l;->g:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/l;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/touch/l;->i:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/touch/l;->j:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/touch/ItemClickHandler;->a(Lcom/android/launcher3/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method
