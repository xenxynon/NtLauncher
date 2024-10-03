.class public final synthetic Lb3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroid/content/ContentResolver;

.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/h;->g:Landroid/content/ContentResolver;

    iput-object p2, p0, Lb3/h;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb3/h;->g:Landroid/content/ContentResolver;

    iget-object p0, p0, Lb3/h;->h:Landroid/content/Context;

    invoke-static {v0, p0}, Lb3/i;->b(Landroid/content/ContentResolver;Landroid/content/Context;)V

    return-void
.end method
