.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isFoldingFeatureValid(Ljava/lang/ClassLoader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->$classLoader:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 6

    sget-object v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$foldingFeatureClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getBounds"

    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "getType"

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-string v5, "getState"

    invoke-virtual {p0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v4, "getBoundsMethod"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroid/graphics/Rect;

    invoke-static {v4}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v4

    invoke-static {v0, v2, v4}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$doesReturn(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lf6/c;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$isPublic(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getTypeMethod"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$doesReturn(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lf6/c;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$isPublic(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getStateMethod"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v2

    invoke-static {v0, p0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$doesReturn(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lf6/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$isPublic(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method