.class public final synthetic La2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lorg/json/JSONObject;

.field public final synthetic h:La2/b;

.field public final synthetic i:Landroid/view/View;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lw1/a;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/a;->g:Lorg/json/JSONObject;

    iput-object p2, p0, La2/a;->h:La2/b;

    iput-object p3, p0, La2/a;->i:Landroid/view/View;

    iput-object p4, p0, La2/a;->j:Ljava/lang/String;

    iput-object p5, p0, La2/a;->k:Lw1/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, La2/a;->g:Lorg/json/JSONObject;

    iget-object v1, p0, La2/a;->h:La2/b;

    iget-object v2, p0, La2/a;->i:Landroid/view/View;

    iget-object v3, p0, La2/a;->j:Ljava/lang/String;

    iget-object v4, p0, La2/a;->k:Lw1/a;

    move-object v5, p1

    check-cast v5, Lorg/json/JSONObject;

    invoke-static/range {v0 .. v5}, La2/b;->a(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;Lorg/json/JSONObject;)V

    return-void
.end method
