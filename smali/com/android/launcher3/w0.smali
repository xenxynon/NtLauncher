.class public final synthetic Lcom/android/launcher3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Launcher;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/content/Intent;

.field public final synthetic j:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic k:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w0;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/w0;->h:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/w0;->i:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/w0;->j:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/w0;->k:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/w0;->g:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/w0;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/w0;->i:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/w0;->j:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/w0;->k:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/Launcher;->C(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V

    return-void
.end method
