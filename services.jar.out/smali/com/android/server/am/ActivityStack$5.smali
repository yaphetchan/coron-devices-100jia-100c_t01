.class Lcom/android/server/am/ActivityStack$5;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->sendHomeVisibilityBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5424
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$5;->this$0:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$5;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5427
    return-void
.end method
