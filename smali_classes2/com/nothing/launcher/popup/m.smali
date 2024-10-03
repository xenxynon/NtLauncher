.class public final synthetic Lcom/nothing/launcher/popup/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/Launcher;

.field public final synthetic h:Lcom/android/launcher3/util/IntSet;

.field public final synthetic i:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/popup/m;->g:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/nothing/launcher/popup/m;->h:Lcom/android/launcher3/util/IntSet;

    iput-object p3, p0, Lcom/nothing/launcher/popup/m;->i:Lcom/android/launcher3/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/popup/m;->g:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/nothing/launcher/popup/m;->h:Lcom/android/launcher3/util/IntSet;

    iget-object p0, p0, Lcom/nothing/launcher/popup/m;->i:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0, v1, p0}, Lcom/nothing/launcher/popup/l$d;->G(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    return-void
.end method
