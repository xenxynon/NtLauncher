.class final Lb5/b$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb5/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/launcher3/Workspace<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lb5/b;


# direct methods
.method constructor <init>(Lb5/b;)V
    .locals 0

    iput-object p1, p0, Lb5/b$b;->g:Lb5/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/launcher3/Workspace;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lb5/b$b;->g:Lb5/b;

    invoke-virtual {p0}, Lb5/b;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb5/b$b;->a()Lcom/android/launcher3/Workspace;

    move-result-object p0

    return-object p0
.end method
