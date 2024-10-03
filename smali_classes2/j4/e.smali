.class public final synthetic Lj4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/e;->g:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lj4/e;->g:Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/nothing/launcher/ossupport/onlineconfig/ConfigLoader;->b(Lorg/json/JSONArray;)V

    return-void
.end method
