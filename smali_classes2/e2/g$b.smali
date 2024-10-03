.class public final Le2/g$b;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/g;-><init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Le2/g;


# direct methods
.method constructor <init>(Le2/g;)V
    .locals 0

    iput-object p1, p0, Le2/g$b;->a:Le2/g;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Le2/g$b;->a:Le2/g;

    invoke-virtual {p0}, Le2/g;->E()Lx1/i;

    move-result-object p0

    invoke-interface {p0}, Lx1/i;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Le2/g$b;->a:Le2/g;

    invoke-virtual {p0}, Le2/g;->E()Lx1/i;

    move-result-object p0

    invoke-interface {p0}, Lx1/i;->g()V

    return-void
.end method
